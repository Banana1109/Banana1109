require 'rubygems'
require 'gosu'
require './circle'

# The screen has layers: Background, middle, top
module ZOrder
  BACKGROUND, MIDDLE, TOP = *0..2
end

class DemoWindow < Gosu::Window
  def initialize
    super(640, 500, false)
  end

  def draw
    s0 = Gosu::Image.new(Circle.new(1))
    s1 = Gosu::Image.new(Circle.new(2))
    s2 = Gosu::Image.new(Circle.new(4))
    s3 = Gosu::Image.new(Circle.new(6))

    s0.draw(285,335, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(290,285, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(305,440, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(276,310, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(380,420, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(430,315, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(425,335, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(440,290, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s2.draw(155,200, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(445,200, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(420,150, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(165,135, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(120,235, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s1.draw(175,350, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(455,375, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    s0.draw(485,266, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)

    img1 = Gosu::Image.new(Circle.new(55))
    img2 = Gosu::Image.new(Circle.new(45))
    img3 = Gosu::Image.new(Circle.new(35))
    img4 = Gosu::Image.new(Circle.new(5))

    img1.draw(300, 300, ZOrder::TOP, 1.0, 1.0, Gosu::Color::AQUA)
    draw_quad(300, 0, Gosu::Color::AQUA, 410, 0, Gosu::Color::AQUA, 300, 355, Gosu::Color::AQUA, 410, 355, Gosu::Color::AQUA, ZOrder::MIDDLE)

    img2.draw(310, 310, ZOrder::TOP, 1.0, 1.0, 0xff_5b1c5c)
    draw_quad(310, 355, 0xff_5b1c5c, 400, 355, 0xff_5b1c5c, 310, 150, 0xff_5b1c5c, 400, 150 , 0xff_5b1c5c, ZOrder::TOP)

    draw_quad(310,205, Gosu::Color::AQUA, 320, 205, Gosu::Color::AQUA, 310, 150, Gosu::Color::AQUA, 320, 150 , Gosu::Color::AQUA , ZOrder::TOP)
    img4.draw(310,200, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(320,235, ZOrder::TOP, 1.0, 1.0,Gosu::Color::AQUA)
    draw_quad(320,240, Gosu::Color::AQUA, 330, 240, Gosu::Color::AQUA, 320, 150, Gosu::Color::AQUA, 330, 150 , Gosu::Color::AQUA , ZOrder::TOP)

    img4.draw(330,145, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(340,215, ZOrder::TOP, 1.0, 1.0,Gosu::Color::AQUA)
    draw_quad(340,220, Gosu::Color::AQUA, 350, 220, Gosu::Color::AQUA, 340, 150, Gosu::Color::AQUA, 350, 150 , Gosu::Color::AQUA , ZOrder::TOP)

    draw_quad(350,190, Gosu::Color::AQUA, 360, 190, Gosu::Color::AQUA, 350, 150, Gosu::Color::AQUA, 360, 150 , Gosu::Color::AQUA , ZOrder::TOP)
    img4.draw(350,185, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(360,203, ZOrder::TOP, 1.0, 1.0,Gosu::Color::AQUA)
    draw_quad(360,208, Gosu::Color::AQUA, 370, 208, Gosu::Color::AQUA, 360, 150, Gosu::Color::AQUA, 370, 150 , Gosu::Color::AQUA , ZOrder::TOP)

    img4.draw(370,145, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(380,250, ZOrder::TOP, 1.0, 1.0,Gosu::Color::AQUA)
    draw_quad(380,255, Gosu::Color::AQUA, 390, 255, Gosu::Color::AQUA, 380, 150, Gosu::Color::AQUA, 390, 150 , Gosu::Color::AQUA , ZOrder::TOP)

    draw_quad(390,225, Gosu::Color::AQUA, 400, 225, Gosu::Color::AQUA, 390, 150, Gosu::Color::AQUA, 400, 150 , Gosu::Color::AQUA , ZOrder::TOP)
    img4.draw(390,220, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)

    img4.draw(310,90, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(310,105, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(310,110 ,0xff_5b1c5c, 320, 110, 0xff_5b1c5c, 310, 95, 0xff_5b1c5c, 320, 95 , 0xff_5b1c5c , ZOrder::TOP)

    img4.draw(330,20, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(330,75, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(330,80 ,0xff_5b1c5c, 340, 80, 0xff_5b1c5c, 330, 25, 0xff_5b1c5c, 340, 25 , 0xff_5b1c5c , ZOrder::TOP)

    img4.draw(370,95, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(370,125, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(370,130 ,0xff_5b1c5c, 380, 130, 0xff_5b1c5c, 370,100 , 0xff_5b1c5c, 380, 100 , 0xff_5b1c5c , ZOrder::TOP)

    img4.draw(390,190, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    img4.draw(390,200, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(390,205 ,0xff_5b1c5c, 400, 205, 0xff_5b1c5c, 390,195 , 0xff_5b1c5c, 400, 195 , 0xff_5b1c5c , ZOrder::TOP)

    draw_quad(320, 355, 0xff_d01362, 390, 355, 0xff_d01362, 320, 290, 0xff_d01362, 390, 290 , 0xff_d01362, ZOrder::TOP)
    img3.draw(320, 320, ZOrder::TOP, 1.0, 1.0, Gosu::Color::WHITE)
    
    draw_quad(320,295 ,0xff_5b1c5c, 330, 295, 0xff_5b1c5c, 320, 290, 0xff_5b1c5c, 330, 290 , 0xff_5b1c5c , ZOrder::TOP)
    img4.draw(320,290, ZOrder::TOP, 1.0, 1.0,0xff_d01362)
    img4.draw(330,305, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(330,310 ,0xff_5b1c5c, 340, 310, 0xff_5b1c5c, 330,290 , 0xff_5b1c5c, 340, 290 , 0xff_5b1c5c , ZOrder::TOP)

    draw_quad(340, 290, 0xff_d01362, 350, 290, 0xff_d01362, 340, 245, 0xff_d01362, 350, 245 , 0xff_d01362, ZOrder::TOP)
    img4.draw(340,240, ZOrder::TOP, 1.0, 1.0,0xff_d01362)
    img4.draw(350,297, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(350,302 ,0xff_5b1c5c, 360, 302, 0xff_5b1c5c, 350,290 , 0xff_5b1c5c, 360, 290 , 0xff_5b1c5c , ZOrder::TOP)

    draw_quad(360, 290, 0xff_d01362, 370, 290, 0xff_d01362, 360, 265, 0xff_d01362, 370, 265 , 0xff_d01362, ZOrder::TOP)
    img4.draw(360,260, ZOrder::TOP, 1.0, 1.0,0xff_d01362)
    img4.draw(370,307, ZOrder::TOP, 1.0, 1.0,0xff_5b1c5c)
    draw_quad(370,312 ,0xff_5b1c5c, 380, 312, 0xff_5b1c5c, 370,290 , 0xff_5b1c5c, 380, 290 , 0xff_5b1c5c , ZOrder::TOP)

    img4.draw(380,285, ZOrder::TOP, 1.0, 1.0,0xff_d01362)

    img4.draw(320,260, ZOrder::TOP, 1.0, 1.0,0xff_d01362)
    draw_quad(320, 265, 0xff_d01362, 330, 265, 0xff_d01362, 320, 270, 0xff_d01362, 330, 270 , 0xff_d01362, ZOrder::TOP)
    img4.draw(320,265, ZOrder::TOP, 1.0, 1.0,0xff_d01362)

    img4.draw(360,230, ZOrder::TOP, 1.0, 1.0,0xff_d01362)
    draw_quad(360, 235, 0xff_d01362, 370, 235, 0xff_d01362, 360, 245, 0xff_d01362, 370, 245 , 0xff_d01362, ZOrder::TOP)
    img4.draw(360,240, ZOrder::TOP, 1.0, 1.0,0xff_d01362)

  end
end
DemoWindow.new.show