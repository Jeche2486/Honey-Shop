from flask import*
import pymysql
from werkzeug.security import generate_password_hash, chech_password_hash
# from functions import *
# from mpesa import *
app = Flask (__name__)
app.secret_key = 'your_secret_key'  # Needed for session management

@app.route('/')
def homepage():
    # connect to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='honey')
    sql = "select * from products where product_category = 'honey varieties' "
    sql1 = "select * from products where product_category = 'gift hamper' "
    sql2 = "select * from products where product_category = 'skin care' "
    sql3 = "select * from products where product_category = 'honey medicines' "
    sql4 = "select * from products where product_category = 'honey delicacies' "
    # you need to have a cursor 
    # cursor -  is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()
 

    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)



    # fetch all honey varieties rows 
    Honey_Varieties = cursor.fetchall()
    # fetch all gift hamper rows
    Gift_Hamper= cursor1.fetchall()
    #fetch all skincare rows
    SkinCare= cursor2.fetchall()
    #fetch all honey delicacies rows
    Honey_Delicacies= cursor3.fetchall()
     #fetch all honey medicines rows
    Honey_Medicines= cursor4.fetchall()

    return render_template("index.html", Honey_Varieties = Honey_Varieties, Gift_Hamper = Gift_Hamper, SkinCare= SkinCare, Honey_Delicacies = Honey_Delicacies, Honey_Medicines = Honey_Medicines )


# Admin session decorator note : use if all pages are visible

# def admin_required(f):
#     @wraps(f)
#     def decorated_function(*args, **kwargs):
#         if 'Admin' not in session or session['Admin'] != 'Admin':
#             return redirect('/') #redirect non-admins to home
#         return f(*args, **kwargs)
#     return decorated_function


@app.route('/single/<product_id>')
def singleitem(product_id):
    #connection to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='honey')
    # create sql query 
    sql = "select * from products where product_id = %s " 
    # create a cursor 
    cursor = connection.cursor()

    # execute
    cursor.execute(sql, product_id)

    # get the single product
    product = cursor.fetchone()



    return render_template("single.html" , product = product)

# upload products
@app.route("/upload", methods = ['POST' , 'GET'])
def Upload():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)


        #connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='honey')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc , product_cost, product_category , product_image_name.filename )

        #execute
        cursor.execute(sql, data)

        #save changes
        connection.commit()


        return render_template('/upload.html', message = "Product added successfully")
    else:
     return render_template('/upload.html', error = "Please add a product")
    
#fashion route
#helps you to see all the fashions

@app.route('/honey')
def Fashion():
    # connect to db
    connection = pymysql.connect(host='localhost', user='root', password='', database='honey')
    sql = "select * from products where product_category = 'Raw Honey' "
    sql1 = "select * from products where product_category = 'Flavored Honey' "
    sql2 = "select * from products where product_category = 'Organic Honey' "
    sql3 = "select * from products where product_category = 'Honey Comb' "
    sql4 = "select * from products where product_category = 'Honey Gifts' "
    # you need to have a cursor 
    # cursor -  is used to run / execute above SQL 
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()
    cursor4 = connection.cursor()


    # execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)


    # fetch all Raw honey rows 
    Raw_Honey = cursor.fetchall()
    # fetch all Flavoured honey rows
    Flavored_Honey = cursor1.fetchall()
    #fetch all caps rows
    Organic_Honey= cursor2.fetchall()
    #fetch all socks rows
    Honey_Comb= cursor3.fetchall()
    #fetch all belt rows
    Honey_Gifts= cursor4.fetchall()
    return render_template("honey.html" , Raw_Honey = Raw_Honey, Flavored_Honey = Flavored_Honey, Organic_Honey = Organic_Honey, Honey_Comb = Honey_Comb, Honey_Gifts = Honey_Gifts)

# a route to upload fashion
@app.route("/uploadhoney", methods = ['POST' , 'GET'])
def UploadHoney():
    if request.method == 'POST':
        # user can add the products 
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)


        #connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='honey')

        # create a cursor 
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values (%s, %s, %s, %s, %s)"

        data = (product_name, product_desc , product_cost, product_category , product_image_name.filename )

        #execute
        cursor.execute(sql, data)

        #save changes
        connection.commit()


        return render_template('uploadhoney.html', message = "Honey added successfully")
    else:
     return render_template('uploadhoney.html', error = "Please add honey")
    

    


@app.route('/about')
def About():
    return "this is about page "


@app.route("/register", methods=['POST', 'GET'])
def register():
    if request.method == 'POST':
        # user registration logic
        username = request.form['username']
        email = request.form['email']
        gender = request.form['gender']
        phone = request.form['phone']
        password = request.form['password']

        # # validate user password 
        # response = checkpasswordvalidity(password)
        # if response == True:
        #     # password met all the conditions 

        # else:
        #     # password did not meet all conditions 
        #      return render_template('register.html', message="User registered successfully")



        # Connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='honey')
 
        # create a cursor
        cursor = connection.cursor()
 
        sql = "INSERT INTO users (username, email, gender, phone, password) VALUES (%s, %s, %s, %s, %s)"
        data = (username, email, gender, phone,password)
 
        # execute
        cursor.execute(sql, data)
 
        # save changes
        connection.commit()
 
        return render_template('register.html', message="User registered successfully")
    
    # If GET request, show the registration form
    return render_template('register.html', error="Please register")

@app.route('/login', methods = ['POST' , 'GET'])
def login():
    if request.method == 'POST':
        # user login logic
        email = request.form['email']
        password = request.form['password']

        # Connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='honey')
 
        # create a cursor
        cursor = connection.cursor()
 
        sql = "SELECT * from users where email = %s and password = %s"
        data = (email,password)
 
        # execute
        cursor.execute(sql, data)
        
        # chec if any result found 
        if cursor.rowcount == 0:
 
          return render_template('login.html', error=" invalid login credentials")
        else:
            session['key'] = email
         
            #  flash("Login successful!", "success")  # Add this line for success message
            # If GET request, show the registration form
        return redirect("/")
    
    return render_template ('login.html')

# #mpesa 
# #implement STK PUSH
# @app.route('/mpesa', methods = ['POST'])
# def mpesa():
#     phone = request.form["phone"]
#     amount = request.form["amount"]

#     # use mpesa payment function mpesa.py 
#     # it accepts the phone and amount as arguments 
#     mpesa_payment(amount, phone)
#     return '<h1> Please Complete Payment in your phone </h1>'    \
#     '<a href="/" class="btn btn-primary btn-sm" > Go back to products </a>'

@app.route('/logout')
def logout():
       session.clear()
       return redirect("/login")

if __name__ == '__main__':
    app.run(debug=True,port= 3000)