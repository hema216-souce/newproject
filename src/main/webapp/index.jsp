<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #f4f7fb;
            --primary: #0f172a;
            --secondary: #1e293b;
            --accent: #06b6d4;
            --accent2: #7c3aed;
            --card: #ffffff;
            --text: #0f172a;
            --muted: #64748b;
            --border: rgba(15, 23, 42, .08);
            --shadow: 0 10px 30px rgba(2, 6, 23, .08);
            --radius: 22px;
            --container: 1280px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background:
                radial-gradient(circle at top left, #dff7ff 0%, transparent 30%),
                radial-gradient(circle at bottom right, #ede9fe 0%, transparent 30%),
                var(--bg);
            color: var(--text);
            line-height: 1.5;
        }

        img {
            max-width: 100%;
            display: block;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: auto;
            padding: 0 24px;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 999;
            backdrop-filter: blur(16px);
            background: rgba(255, 255, 255, .7);
            border-bottom: 1px solid rgba(255, 255, 255, .3);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 18px 0;
            gap: 20px;
        }

        .brand {
            font-family: Poppins, sans-serif;
            font-size: 30px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav ul {
            display: flex;
            align-items: center;
            gap: 10px;
            list-style: none;
        }

        nav a {
            padding: 10px 16px;
            border-radius: 14px;
            transition: .3s ease;
            font-weight: 500;
        }

        nav a:hover {
            background: white;
            box-shadow: var(--shadow);
            color: var(--accent2);
        }

        .search {
            background: white;
            border-radius: 999px;
            padding: 12px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            width: 320px;
            box-shadow: var(--shadow);
        }

        .search input {
            border: none;
            outline: none;
            width: 100%;
            background: transparent;
            font-size: 14px;
        }

        .icon-btn {
            background: white;
            width: 45px;
            height: 45px;
            border-radius: 14px;
            border: none;
            cursor: pointer;
            box-shadow: var(--shadow);
            transition: .3s;
        }

        .icon-btn:hover {
            transform: translateY(-4px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
            font-size: 12px;
            display: grid;
            place-items: center;
            font-weight: 700;
        }

        /* HERO */

        .hero {
            min-height: 92vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
            overflow: hidden;
            background:
                linear-gradient(rgba(15, 23, 42, .65), rgba(15, 23, 42, .75)),
                url("https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1600&auto=format&fit=crop") center/cover;
            border-bottom-left-radius: 40px;
            border-bottom-right-radius: 40px;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 900px;
        }

        .hero h1 {
            font-size: 72px;
            line-height: 1;
            color: white;
            margin-bottom: 24px;
            font-family: Poppins, sans-serif;
            letter-spacing: -3px;
        }

        .hero p {
            color: rgba(255, 255, 255, .85);
            font-size: 18px;
            margin-bottom: 36px;
        }

        .hero-buttons {
            display: flex;
            gap: 18px;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* BUTTONS */

        .btn {
            border: none;
            padding: 15px 28px;
            border-radius: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: .3s ease;
            font-size: 15px;
        }

        .btn:hover {
            transform: translateY(-4px);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
            box-shadow: 0 10px 30px rgba(124, 58, 237, .3);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, .12);
            color: white;
            border: 1px solid rgba(255, 255, 255, .2);
            backdrop-filter: blur(10px);
        }

        /* SECTION */

        .section {
            padding: 100px 0;
        }

        .title {
            text-align: center;
            margin-bottom: 60px;
        }

        .title h2 {
            font-size: 42px;
            margin-bottom: 12px;
            font-family: Poppins, sans-serif;
        }

        .muted {
            color: var(--muted);
        }

        /* GRID */

        .grid {
            display: grid;
            gap: 30px;
        }

        /* CATEGORY */

        .categories {
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
        }

        .cat-card {
            background: rgba(255, 255, 255, .75);
            backdrop-filter: blur(14px);
            border-radius: 28px;
            padding: 35px 20px;
            text-align: center;
            transition: .35s ease;
            box-shadow: var(--shadow);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-10px);
        }

        .cat-card .icon {
            width: 80px;
            height: 80px;
            margin: auto;
            display: grid;
            place-items: center;
            border-radius: 22px;
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
            font-size: 32px;
            margin-bottom: 22px;
        }

        /* PRODUCTS */

        .products {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        }

        .product {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: .35s ease;
        }

        .product:hover {
            transform: translateY(-10px);
        }

        .product img {
            height: 260px;
            width: 100%;
            object-fit: cover;
        }

        .product-body {
            padding: 24px;
        }

        .product h5 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 18px;
        }

        .price {
            font-size: 24px;
            font-weight: 700;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 14px;
        }

        .rating {
            color: #f59e0b;
        }

        .product-footer {
            display: flex;
            gap: 14px;
            padding: 0 24px 24px;
        }

        .add-btn {
            flex: 1;
            border: none;
            padding: 15px;
            border-radius: 16px;
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            color: white;
            font-weight: 600;
            cursor: pointer;
        }

        .wish-btn {
            width: 55px;
            border: none;
            border-radius: 16px;
            background: #f1f5f9;
            cursor: pointer;
        }

        /* DEAL */

        .deal {
            background: white;
            border-radius: 36px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            box-shadow: var(--shadow);
        }

        .deal img {
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 50px;
        }

        .timer {
            display: flex;
            gap: 14px;
            margin: 30px 0;
        }

        .time-box {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            padding: 18px;
            border-radius: 20px;
            min-width: 90px;
            text-align: center;
        }

        /* TESTIMONIALS */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 24px;
        }

        .testimonial {
            background: white;
            border-radius: 28px;
            padding: 30px;
            box-shadow: var(--shadow);
        }

        /* NEWSLETTER */

        .newsletter {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            padding: 70px 30px;
            border-radius: 40px;
            text-align: center;
            color: white;
        }

        .newsletter form {
            margin-top: 25px;
            display: flex;
            justify-content: center;
            gap: 14px;
            flex-wrap: wrap;
        }

        .newsletter input {
            width: 360px;
            max-width: 100%;
            border: none;
            outline: none;
            padding: 16px 20px;
            border-radius: 999px;
        }

        /* FOOTER */

        footer {
            padding: 70px 0 40px;
            color: var(--muted);
        }

        /* RESPONSIVE */

        @media(max-width:900px) {

            nav {
                display: none;
            }

            .hero h1 {
                font-size: 48px;
            }

            .deal {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width:600px) {

            .hero {
                min-height: 80vh;
            }

            .hero h1 {
                font-size: 38px;
            }

            .title h2 {
                font-size: 32px;
            }

            .search {
                display: none;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->

    <header>
        <div class="container header-inner">

            <a href="#" class="brand">
                Nexus<span class="accent">Shop</span>
            </a>

            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Categories</a></li>
                    <li><a href="#">Trending</a></li>
                    <li><a href="#">Deals</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>

            <div class="header-actions">

                <div class="search">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search products..." />
                </div>

                <button class="icon-btn">
                    <i class="far fa-user"></i>
                </button>

                <button class="icon-btn">
                    <i class="far fa-heart"></i>
                </button>

                <button class="icon-btn cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count">2</span>
                </button>

            </div>
        </div>
    </header>

    <!-- HERO -->

    <section class="hero">
        <div class="container hero-content">

            <h1>Discover Premium Lifestyle Products</h1>

            <p>
                Explore the latest collections in fashion, electronics,
                accessories and more with stunning discounts.
            </p>

            <div class="hero-buttons">
                <button class="btn btn-primary">
                    Shop Now
                </button>

                <button class="btn btn-secondary">
                    Explore Deals
                </button>
            </div>

        </div>
    </section>

    <!-- CATEGORIES -->

    <section class="section">
        <div class="container">

            <div class="title">
                <h2>Shop By Category</h2>
                <p class="muted">
                    Browse products from our premium collections
                </p>
            </div>

            <div class="grid categories">

                <div class="cat-card">
                    <div class="icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Smartphones</h3>
                </div>

                <div class="cat-card">
                    <div class="icon">
                        <i class="fas fa-laptop"></i>
                    </div>
                    <h3>Laptops</h3>
                </div>

                <div class="cat-card">
                    <div class="icon">
                        <i class="fas fa-headphones"></i>
                    </div>
                    <h3>Accessories</h3>
                </div>

                <div class="cat-card">
                    <div class="icon">
                        <i class="fas fa-camera"></i>
                    </div>
                    <h3>Cameras</h3>
                </div>

            </div>

        </div>
    </section>

    <!-- PRODUCTS -->

    <section class="section">
        <div class="container">

            <div class="title">
                <h2>Trending Products</h2>
                <p class="muted">
                    Handpicked popular products for you
                </p>
            </div>

            <div class="grid products">

                <!-- PRODUCT -->

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1200&auto=format&fit=crop" alt="Nike Shoes">

                    <div class="product-body">

                        <h5>Nike Air Max</h5>

                        <p class="muted">
                            Premium running sneakers
                        </p>

                        <div class="price-row">

                            <div>
                                <div class="price">$180</div>
                                <div class="old-price">$220</div>
                            </div>

                            <div class="rating">
                                ★★★★★
                            </div>

                        </div>

                    </div>

                    <div class="product-footer">

                        <button class="add-btn">
                            Add to Cart
                        </button>

                        <button class="wish-btn">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

                <!-- PRODUCT -->

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1200&auto=format&fit=crop" alt="iPhone">

                    <div class="product-body">

                        <h5>iPhone 15 Pro</h5>

                        <p class="muted">
                            Apple flagship smartphone
                        </p>

                        <div class="price-row">

                            <div>
                                <div class="price">$999</div>
                                <div class="old-price">$1199</div>
                            </div>

                            <div class="rating">
                                ★★★★★
                            </div>

                        </div>

                    </div>

                    <div class="product-footer">

                        <button class="add-btn">
                            Add to Cart
                        </button>

                        <button class="wish-btn">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

                <!-- PRODUCT -->

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?q=80&w=1200&auto=format&fit=crop" alt="Laptop">

                    <div class="product-body">

                        <h5>MacBook Pro</h5>

                        <p class="muted">
                            Performance meets elegance
                        </p>

                        <div class="price-row">

                            <div>
                                <div class="price">$1999</div>
                                <div class="old-price">$2299</div>
                            </div>

                            <div class="rating">
                                ★★★★★
                            </div>

                        </div>

                    </div>

                    <div class="product-footer">

                        <button class="add-btn">
                            Add to Cart
                        </button>

                        <button class="wish-btn">
                            <i class="far fa-heart"></i>
                        </button>

                    </div>

                </div>

            </div>

        </div>
    </section>

    <!-- DEAL -->

    <section class="section">
        <div class="container">

            <div class="deal">

                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?q=80&w=1400&auto=format&fit=crop" alt="MacBook">

                <div class="deal-content">

                    <h2>Flash Sale</h2>

                    <p class="muted" style="margin-top:10px;">
                        MacBook Air M2 with exclusive limited-time pricing.
                    </p>

                    <div class="timer">

                        <div class="time-box">
                            <h3>01</h3>
                            <small>Days</small>
                        </div>

                        <div class="time-box">
                            <h3>12</h3>
                            <small>Hours</small>
                        </div>

                        <div class="time-box">
                            <h3>45</h3>
                            <small>Minutes</small>
                        </div>

                    </div>

                    <div class="price">
                        $999
                    </div>

                    <button class="btn btn-primary" style="margin-top:25px;">
                        Buy Now
                    </button>

                </div>

            </div>

        </div>
    </section>

    <!-- TESTIMONIALS -->

    <section class="section">

        <div class="container">

            <div class="title">
                <h2>Customer Reviews</h2>
                <p class="muted">
                    Trusted by thousands of happy shoppers
                </p>
            </div>

            <div class="testimonials">

                <div class="testimonial">

                    <div class="rating">
                        ★★★★★
                    </div>

                    <p style="margin:20px 0;">
                        Amazing quality products and lightning fast delivery.
                        The UI and shopping experience are incredible.
                    </p>

                    <strong>— Sarah Williams</strong>

                </div>

                <div class="testimonial">

                    <div class="rating">
                        ★★★★★
                    </div>

                    <p style="margin:20px 0;">
                        One of the best ecommerce experiences I’ve had.
                        Clean design and premium feel.
                    </p>

                    <strong>— Michael Lee</strong>

                </div>

            </div>

        </div>

    </section>

    <!-- NEWSLETTER -->

    <section class="section">

        <div class="container">

            <div class="newsletter">

                <h2>Stay Updated</h2>

                <p style="margin-top:10px;">
                    Subscribe to get exclusive offers and latest arrivals
                </p>

                <form>

                    <input type="email" placeholder="Enter your email">

                    <button class="btn btn-primary">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>

    </section>

    <!-- FOOTER -->

    <footer>

        <div class="container">

            <div style="display:flex;justify-content:space-between;flex-wrap:wrap;gap:30px;">

                <div>

                    <h2 class="brand">
                        Nexus<span class="accent">Shop</span>
                    </h2>

                    <p class="muted" style="margin-top:15px;">
                        Premium ecommerce experience with modern UI design.
                    </p>

                </div>

                <div>

                    <h3>Quick Links</h3>

                    <p class="muted" style="margin-top:15px;line-height:2;">
                        About <br>
                        Products <br>
                        Contact
                    </p>

                </div>

                <div>

                    <h3>Follow Us</h3>

                    <div style="display:flex;gap:14px;margin-top:15px;">

                        <button class="icon-btn">
                            <i class="fab fa-facebook-f"></i>
                        </button>

                        <button class="icon-btn">
                            <i class="fab fa-instagram"></i>
                        </button>

                        <button class="icon-btn">
                            <i class="fab fa-twitter"></i>
                        </button>

                    </div>

                </div>

            </div>

            <div style="margin-top:50px;text-align:center;">
                © 2026 NexusShop. All Rights Reserved.
            </div>

        </div>

    </footer>

</body>

</html>
