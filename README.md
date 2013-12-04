Bottle on Heroku
================

Create your virtualenv, then install the requirements with 

```    
pip install -r requirements.txt
```

Then run

```   
python app.py
```

to generate magic in development.   

To push to Heroku, 

```     
heroku create    
git add .     
git commit -m "init"    
git push heroku master     
heroku open
```   

to see your beautiful website on Heroku :p