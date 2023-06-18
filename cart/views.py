from datetime import date
from django.shortcuts import render, redirect

from game_shop_app.forms import PurchaseForm
from game_shop_app.models import Game, Order


def cart(request):

    if request.method == 'POST':
        set_item_quantity(request)

    context = []

    if 'cart' in request.session.keys():
        context = get_cart_items(request)
    else:
        return render(request, 'cart/empty-cart.html')

    if not context:
        return render(request, 'cart/empty-cart.html')
    else:
        total_price = get_total_price(context)
        return render(request, 'cart/cart.html', {"cart": context, "total_price": total_price})


def get_cart_items(request):

    content = []
    for item in request.session['cart']:
        if item['type'] == 'game':
            game = Game.objects.get(id=item['id'])
            game.price = (game.price * item['quantity'])
            content.append({item['quantity']: game})

    return content


def add(request, id):
    if request.method == 'POST':
        if not request.session.get('cart'):
            request.session['cart'] = []
        else:
            request.session['cart'] = list(request.session['cart'])

        added_data = {
            'type': request.POST.get('type'),
            'id': id,
            'quantity': 1,
        }

        if is_exists(request, id):
            increase_item_quantity(request, id)
            request.session.modified = True
        else:
            request.session['cart'].append(added_data)
            request.session.modified = True

    return redirect("/")


def is_exists(request, id):
    for item in request.session['cart']:
        if item['type'] == request.POST.get('type') and item['id'] == id:
            return True

    return False


def increase_item_quantity(request, id):
    for item in request.session['cart']:
        if item['type'] == request.POST.get('type') and item['id'] == id:
            item['quantity'] += 1


def set_item_quantity(request):
    for item in request.session['cart']:
        if item['type'] == request.POST.get('type') and item['id'] == int(request.POST.get('id')):
            try:
                quantity = int(request.POST.get("quantity"))
            except ValueError:
                pass
            else:
                item['quantity'] = quantity
            request.session.modified = True


def remove(request, id):
    if request.method == 'POST':
        for item in request.session['cart']:
            if item['id'] == id and item['type'] == request.POST.get('type'):
                item.clear()
                break

        clear_remains(request)

    return redirect("/cart/")


def remove_all(request):

    for item in request.session['cart']:
        item.clear()

    clear_remains(request)

    return redirect("/cart")


def make_order(request):

    cart_items = get_cart_items(request)

    order = Order(
        user=request.user,
        order_items=request.session['cart'],
        card=request.POST.get('card_number').replace(" ", "").strip(),
        cvv_code=request.POST.get("cvv_num"),
        card_validity_period=request.POST.get('card_validity_period'),
        order_date=date.today(),
        total_price=get_total_price(cart_items),
    )

    order.save()


def clear_remains(request):
    while {} in request.session['cart']:
        request.session['cart'].remove({})

    if not request.session['cart']:
        del request.session['cart']

    request.session.modified = True


def get_total_price(context):
    total_sum = 0

    for item in context:
        for game in item.values():
            total_sum += game.price

    return total_sum


def purchase(request):
    if request.method == 'POST':
        form = PurchaseForm(request.POST)
        if form.is_valid():
            make_order(request)
            remove_all(request)
            return redirect('/cart/purchase/success/')
    else:
        form = PurchaseForm()
    return render(request, 'cart/purchase.html', {"form": form})


def purchase_success(request):
    return render(request, 'cart/purchase-success.html')


def purchase_failed(request):
    return render(request, 'cart/purchase-failed.html')



