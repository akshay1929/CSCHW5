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

runtime = np.array([[1809.18, 446.43, 112.04, 28.01, 7.09, 3.13, 2.64],    #32
                    [919.40, 223.62, 55.93, 14.03, 3.92, 2.19, 2.21],    #64
                    [447.52, 112.34, 28.05, 7.09, 2.69, 2.31, 2.15],    #128
                    [247.13, 61.71, 15.52, 4.51, 2.91, 2.75, 2.42],    #256
                    [190.83, 42.76, 10.74, 2.74, 2.54, 2.16, 2.02],    #512
                    [156.72, 39.20, 9.82, 2.48, 2.46, 2.02, 2.07]])   #1024
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

ax.set_title("Runtime on Skylake processor on a Cori GPU node at Varying Block Size and Number of Blocks")
ax.set_ylabel('Threads per block')
ax.set_xlabel('Block Sizes')
fig.colorbar(im, ax=ax)
fig.tight_layout()
plt.show()

# EOF
