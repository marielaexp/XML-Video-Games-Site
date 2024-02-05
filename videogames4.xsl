<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1998/Math/MathML">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>MathML Example</title>
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

          .mathml-container {
            margin-top: 20px;
            text-align: center;
          }

          math {
            font-size: 24px; /* Adjust the size as needed */
            margin-bottom: 20px;
          }
        </style>
      </head>
      <body>
        <header>
          <h1>MathML</h1>
        </header>
        <nav>
          <a href="videogames.xml">Home</a>
          <a href="videogames2.xml">List</a>
          <a href="videogames3.xml">Top rated</a>
          <a href="videogames4.xml">MathXL</a>
                    <a href="videogames5.php">simpleXML/PHP</a>
        </nav>
        <div class="mathml-container">
          <math>
            <mrow>
              <msup>
                <mi>x</mi>
                <mn>2</mn>
              </msup>
              <mo>+</mo>
              <mi>x</mi>
              <mo>+</mo>
              <mn>2</mn>
            </mrow>
          </math>
          <math>
            <mrow>
              <mfrac linethickness="2">
                <mrow>
                  <mi>x</mi>
                  <mo>+</mo>
                  <mn>1</mn>
                </mrow>
                <mi>x</mi>
              </mfrac>
              <msup>
                <mi>y</mi>
                <mn>2</mn>
              </msup>
              <mo>−</mo>
              <mi>z</mi>
            </mrow>
          </math>
          <br/> 
                    <!-- формула -->
          <math>
            <mrow>
              <msup>
                <mi>a</mi>
                <mn>2</mn>
              </msup>
              <mo>+</mo>
              <msup>
                <mi>b</mi>
                <mn>2</mn>
              </msup>
              <mo>=</mo>
              <msup>
                <mi>c</mi>
                <mn>2</mn>
              </msup>
            </mrow>
          </math>
          <br/>
          <!-- матрица -->
          <math>
            <mrow>
              <mo>[</mo>
              <mtable>
                <mtr>
                  <mtd>
                    <mn>1</mn>
                  </mtd>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                </mtr>
                <mtr>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                  <mtd>
                    <mn>1</mn>
                  </mtd>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                </mtr>
                <mtr>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                  <mtd>
                    <mn>0</mn>
                  </mtd>
                  <mtd>
                    <mn>1</mn>
                  </mtd>
                </mtr>
              </mtable>
              <mo>]</mo>
            </mrow>
          </math>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
    