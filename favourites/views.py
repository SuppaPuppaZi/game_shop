from django.shortcuts import render, redirect
from game_shop_app.models import Game


def favourites(request):

    context = []

    if 'favourites' in request.session.keys():
        for item in request.session['favourites']:
            item_id = item.get('id')
            game = Game.objects.get(id=item_id)
            context.append(game)
    else:
        return render(request, 'favourites/empty-favourites.html')

    if not context:
        return render(request, 'favourites/empty-favourites.html')
    else:
        return render(request, 'favourites/favourites.html', {"favourites": context})


def add(request, id):
    if request.method == 'POST':
        if not request.session.get('favourites'):
            request.session['favourites'] = []
        else:
            request.session['favourites'] = list(request.session['favourites'])

        added_data = {
            'type': request.POST.get('type'),
            'id': id,
        }

        if not is_exists(request, id):
            request.session['favourites'].append(added_data)
            request.session.modified = True

    return redirect("/")


def is_exists(request, id):
    for item in request.session['favourites']:
        if item['type'] == request.POST.get('type') and item['id'] == id:
            return True


def remove(request, id):
    if request.method == 'POST':
        for item in request.session['favourites']:
            if item['id'] == id and item['type'] == request.POST.get('type'):
                item.clear()

        clear_remains(request)

    return redirect("/favourites/")


def clear_remains(request):
    while {} in request.session['favourites']:
        request.session['favourites'].remove({})

    if not request.session['favourites']:
        del request.session['favourites']

    request.session.modified = True
