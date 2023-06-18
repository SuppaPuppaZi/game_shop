from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.views.generic import FormView


from .forms import RegisterForm, EditProfileForm
from .models import Game, Genre, Platform, Developer, Publisher, Language, Order


price_filter = {}

class FilterBar:

    def get_genres(self):
        return Genre.objects.all()

    def get_platforms(self):
        return Platform.objects.all()

    def get_developers(self):
        return Developer.objects.all()

    def get_publishers(self):
        return Publisher.objects.all()

    def get_languages(self):
        return Language.objects.all()


def filter_by(request, games):
    if request.POST.get("game_name"):
        if request.method == 'POST' and games.filter(game_name__icontains=request.POST.get("game_name")).exists():
            games = games.filter(game_name__icontains=request.POST.get("game_name"))
        elif request.method == 'POST' and not games.filter(game_name=request.POST.get("game_name")).exists() or not games:
            text = "По выбранному разделу не найдена игра, которую вы ввели."
            return render(request, "empty-games-list.html", {"text": text})
    filter_bar = FilterBar
    return render(request, 'home_page.html', {"games": games, "filter_bar": filter_bar})


def by_genre(request, genre_slug):
    games = Game.objects.filter(genres__slug=genre_slug)
    return filter_by(request, games)


def by_platform(request, platform_slug):
    games = Game.objects.filter(platforms__slug=platform_slug)
    return filter_by(request, games)


def by_developers(request, developer_slug):
    games = Game.objects.filter(developer__slug=developer_slug)
    return filter_by(request, games)


def by_publishers(request, publisher_slug):
    games = Game.objects.filter(publisher__slug=publisher_slug)
    return filter_by(request, games)


def by_languages(request, language_slug):
    games = Game.objects.filter(languages__slug=language_slug)
    return filter_by(request, games)


def by_price(request):
    if request.method == 'POST' and request.POST.get("min_price") and request.POST.get("max_price"):
        price_filter["min_price"] = request.POST.get("min_price")
        price_filter["max_price"] = request.POST.get("max_price")
        games = Game.objects.filter(price__range=(price_filter.get("min_price"), price_filter.get("max_price")))
        if games:
            return filter_by(request, games)
        else:
            text = "Ничего не найдено, попробуйте указать другой ценовой диапазон"
            return render(request, "empty-games-list.html", {"text": text})
    elif request.method == "POST":
        games = Game.objects.filter(price__range=(price_filter.get("min_price"), price_filter.get("max_price")))
        return filter_by(request, games)
    else:
        text = "Ничего не найдено."
        return render(request, "empty-games-list.html", {"text": text})


def home_page(request):
    games = Game.objects.all()
    if request.method == 'POST' and games.filter(game_name__icontains=request.POST.get("game_name")).exists():
        games = games.filter(game_name__icontains=request.POST.get("game_name"))
    elif request.method == 'POST' and not games.filter(game_name=request.POST.get("game_name")).exists():
        text = "Не найдено никаких результатов, возможно, вы допустили ошибку в названии игры, либо её не существует."
        return render(request, "empty-games-list.html", {"text": text})
    filter_bar = FilterBar
    return render(request, "home_page.html", {"games": games, "filter_bar": filter_bar})


def game_details(request, game_slug):
    game = Game.objects.get(slug=game_slug)
    return render(request, "game-details.html", {"game": game})


def about(request):
    return render(request, "about.html")


class RegisterView(FormView):
    form_class = RegisterForm
    template_name = 'registration/register.html'
    success_url = '/accounts/login'

    def form_valid(self, form):
        form.save()
        return super().form_valid(form)


@login_required
def profile(request):
    orders = Order.objects.filter(user_id=request.user.id)
    games = {}
    i = 1
    for item in orders:
        if item.status == 'Обработан':
            for dct in item.order_items:
                if dct.get("type") == "game":
                    game = Game.objects.get(id=dct.get("id"))
                    games[i] = {
                        "game": game,
                        "order_date": item.order_date,
                        "quantity": dct.get("quantity"),
                    }

                    i += 1
    return render(request, "profile.html", {"orders": games})


def profile_edit(request):
    if request.method == 'POST':
        form = EditProfileForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
            return redirect('/profile/')
    else:
        form = EditProfileForm()

    return render(request, 'profile-edit.html', {"form": form})



