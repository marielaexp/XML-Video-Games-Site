<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Top 3 Video Games</title>
       <style>
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
          }

          header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
          }

          nav {
            background-color: #444;
            padding: 10px;
            text-align: center;
          }

          nav a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
          }

          .container {
            display: flex;
            justify-content: space-around;
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
          }

          .game {
            text-align: center;
            margin: 0 10px;
          }
          .rating {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background-color: #929daa;
            color: white;
            font-size: 24px;
            line-height: 60px;
            margin: 0 auto 10px;
          }

          .title {
            font-size: 16px;
            font-weight: bold;
            color: #333;
          }
        </style>
      </head>
      <body>
        <header>
          <h1>Top 3 Video Games</h1>
        </header>
        <nav>
          <a href="videogames.xml">Home</a>
          <a href="videogames2.xml">List</a>
          <a href="videogames3.xml">Top rated</a>
            <a href="videogames4.xml">MathML</a>
                      <a href="videogames5.php">simpleXML/PHP</a>
        </nav>
        <div class="container">
          <xsl:apply-templates select="games/game">
            <xsl:sort select="rating" data-type="number" order="descending"/>
          </xsl:apply-templates>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="game" priority="1">
    <xsl:if test="position() &lt;= 3">
      <div class="game">
        <div class="title">
          <xsl:value-of select="title"/>
        </div>
        <div class="rating">
<xsl:value-of select="rating"/>
        </div>
      </div>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>