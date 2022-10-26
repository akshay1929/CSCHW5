#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''
@author: wes
Created: Thu Sep 30 05:51:28 PDT 2021

Description: this code generates a 2D "heatmap" style plot using sample data that
is hard-coded into the code.

Inputs: none, all problem parameters are hard-coded.

Outputs: a plot showing the heatmap, displayed to the screen

Dependencies: matplotlib, numpy

Assumptions: Developed and Tested with Python 3.8.8 on MacOS 11.6
'''

import numpy as np
import matplotlib
import matplotlib.pyplot as plt

threads_per_block = ['32', '64', '128', '256', '512', '1024'] # y axis, 6 of them
thread_blocks = ["1", "4", "16", "64", "256", "1024", "4096"] # x axis, 7 of them

runtime = np.array([[1.25, 5, 19.99, 79.88, 99.83, 96.44, 93.06],    #32
                    [1.25, 5, 19.99, 79.94, 99.70, 96.81, 95.07],    #64
                    [1.25, 5, 19.99, 79.91, 80.39, 95.82, 94.62],    #128
                    [1.25, 5, 19.99, 79.86, 80.39, 91.69, 96.71],    #256
                    [1.25, 4.99, 19.87, 79.11, 64.34, 91.47, 97.98],    #512
                    [1.25, 5, 19.96, 79.37, 79.96, 98.13, 98.24]])   #1024
                    # 1   4    16   64   256  1024 4096

fig, ax = plt.subplots()
im = ax.imshow(runtime, cmap="coolwarm")

# We want to show all ticks...
ax.set_xticks(np.arange(len(thread_blocks)))
ax.set_yticks(np.arange(len(threads_per_block)))
# ... and label them with the respective list entries
ax.set_xticklabels(thread_blocks)
ax.set_yticklabels(threads_per_block)

# Rotate the tick labels and set their alignment.
plt.setp(ax.get_xticklabels(), rotation=45, ha="right",
         rotation_mode="anchor")

# Loop over data dimensions and create text annotations.
for i in range(len(threads_per_block)): # y axis
    for j in range(len(thread_blocks)): # x axis
        text = ax.text(j, i, runtime[i, j],
                       ha="center", va="center", color="k")

ax.set_title("Efficiency on Skylake processor on a Cori GPU node at Varying Block Size and Number of Blocks")
ax.set_ylabel('Threads per block')
ax.set_xlabel('Block Sizes')
fig.colorbar(im, ax=ax)
fig.tight_layout()
plt.show()

# EOF
