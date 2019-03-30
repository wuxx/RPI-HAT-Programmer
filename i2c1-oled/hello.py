# coding:utf-8

import os
import time
from demo_opts import get_device
from luma.core.virtual import terminal
from PIL import ImageFont

global term

device = get_device()
#font = make_font("tiny.ttf", 12)
#term = terminal(device, font)
term = terminal(device, None)
term.println("hello, world!")
while True:
    pass

