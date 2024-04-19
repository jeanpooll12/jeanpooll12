{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "toc_visible": true,
      "authorship_tag": "ABX9TyPGGUTrK0OpedINu+JlE2aX",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/jeanpooll12/jeanpooll12/blob/main/numpy\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "meKwAMYsap1i"
      },
      "outputs": [],
      "source": [
        "import numpy as np\n",
        "\n",
        "edades = [17, 17, 18, 24, 16, 23, 5, 15, 25]\n",
        "edades_array = np.array(edades)\n",
        "\n",
        "print(edades)\n",
        "print(edades_array)\n",
        "print(edades_array.dtype)\n",
        "print(edades_array.shape)\n",
        "\n",
        "birth_years = []\n",
        "for edad in edades:\n",
        "    birth_years.append(2024 - edad)\n",
        "print(birth_years)"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "m = np.array([[1, 2, 3, 0],\n",
        "              [4, 5, 6, 0],\n",
        "              [7, 8, 9, 0],\n",
        "              [0, 0, 0, 0]])\n",
        "\n",
        "print(m,\"\\n\")\n",
        "print(m.shape,\"\\n\")\n",
        "\n",
        "print(m[3],\"\\n\")\n",
        "print(m[0][2],\"\\n\")\n",
        "print(m[1:3],\"\\n\")\n",
        "print(m[2][1],\"\\n\")\n",
        "# la primera columna\n",
        "print(m[:, 1],\"\\n\")\n",
        "# la primera fila\n",
        "print(m[1, :],\"\\n\")"
      ],
      "metadata": {
        "id": "rpwCob8LbXVx"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "edades = [17, 17, 18, 24, 16, 23, 5, 15, 25]\n",
        "\n",
        "edades_array = np.array(edades)\n",
        "edades_pares = edades_array[edades_array % 2 == 0]\n",
        "edades_5 = edades_array[edades_array % 5 == 0]\n",
        "\n",
        "print(edades_pares)\n",
        "print(edades_5)"
      ],
      "metadata": {
        "id": "olBfM2g9bbYl"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "edades = [17, 17, 18, 24, 16, 23, 5, 15, 25]\n",
        "edades_array = np.array(edades)\n",
        "\n",
        "mayor_de_edad = edades_array >= 18\n",
        "print(mayor_de_edad)"
      ],
      "metadata": {
        "id": "CDF-uQl2bb2l"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "import numpy as np\n",
        "\n",
        "a = np.array([[1, 2],[3, 4]])\n",
        "b = a * int(input(\"ingrese el numero por el cual quiere multiplicar: \"))\n",
        "\n",
        "print(b)"
      ],
      "metadata": {
        "id": "HaVa8mXLfS5T"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "code",
      "source": [
        "import numpy as np # importar numpy y se le cambia el nombre a \"np\"\n",
        "\n",
        "a = np.array([[2, 1],   # generar la matrz \"a\"\n",
        "              [1, 3]])\n",
        "print(a, \"\\n\") # mostrar matriz \"a\"\n",
        "print(4 * a,\"\\n\") # mostrar matriz \"a\" * 4\n",
        "\n",
        "b = np.ones(shape = (2,2)) # crear matriz 2 por 2 de \"1\"\n",
        "print(b,\"\\n\") # mostrar matriz \"b\"\n",
        "print(a + b,\"\\n\") # suma de matrices\n",
        "\n",
        "a_inv = np.linalg.inv(a)\n",
        "print(a_inv,\"\\n\")\n",
        "\n",
        "c = np.array([[5], # crear el vector \"c\"\n",
        "             [10]])\n",
        "print(c,\"\\n\")\n",
        "\n",
        "x = a_inv @ c\n",
        "print(x,\"\\n\")\n",
        "print(np.linalg.solve(a,c),\"\\n\")"
      ],
      "metadata": {
        "id": "FlgvnaWPgtk4"
      },
      "execution_count": null,
      "outputs": []
    }
  ]
}