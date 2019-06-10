# django_practice


## コマンドメモ
```bash
docker-compose build
docker-compose run --rm --service-ports web bash
```

```bash
python manage.py createsuperuser
# admin登録

python manage.py check

python manage.py test polls
# test

python manage.py makemigrations
# migration fileが生成される

python manage.py migrate

python manage.py runserver 0:8000
# サーバーが走る
```


## モデルと戯れる
```bash
python manage.py shell
```

```python
from polls.models import Choice, Question
Question.objects.all()

from django.utils import timezone
q = Question(question_text="What's new?", pub_date=timezone.now())
q.question_text
q.id  # まだない
q.save()
q.id  # できてる
Question.objects.all()
```
