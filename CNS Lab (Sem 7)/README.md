# Cryptography Algorithms – MATLAB and Python Implementations

## Overview

This repository contains implementations of several **classical and modern cryptographic algorithms** written in **MATLAB**, along with their corresponding **Python equivalents**.

The goal of this project is to demonstrate how common cryptographic algorithms can be implemented in MATLAB and then translated into Python while maintaining the same functionality.

This repository is useful for:

* Cryptography laboratory experiments
* Learning how algorithms translate between MATLAB and Python
* Understanding basic encryption, decryption, hashing, and key-exchange techniques

---

## Repository Structure

```
.
├── CaesarCipher.m
├── HillCipher.m
├── RailFenceCipher.m
├── ColumnarTranspositionCipher.m
├── SubstitutionCipher.m
├── DiffieHellman.m
├── RSA_Transaction.m
├── DES_Encryption.m
├── SHA1_Hash.m
├── DSA_Signature.m
├── ECC_Bitcoin_Signature.m
│
└── Python Equivalent
    ├── caesar_cipher.py
    ├── hill_cipher.py
    ├── rail_fence_cipher.py
    ├── columnar_transposition.py
    ├── substitution_cipher.py
    ├── diffie_hellman.py
    ├── rsa_transaction.py
    ├── des_encryption.py
    ├── sha1_hash.py
    ├── dsa_signature.py
    └── ecc_bitcoin_signature.py
```

The root directory contains the **original MATLAB implementations**, while the **Python Equivalent** folder contains the translated Python versions.

---

## Algorithms Included

### Classical Ciphers

* Caesar Cipher
* Hill Cipher
* Rail Fence Cipher
* Columnar Transposition Cipher
* Substitution Cipher

### Public Key Cryptography

* Diffie–Hellman Key Exchange
* RSA Encryption and Decryption
* DSA Digital Signature
* Elliptic Curve / Bitcoin-style Signature

### Modern Cryptography

* DES (Data Encryption Standard)
* SHA-1 Hash Algorithm

---

## Requirements

### MATLAB

* MATLAB R2018 or later recommended

### Python

Python 3.8+ is recommended.

Some programs may require additional libraries:

```bash
pip install numpy
pip install pycryptodome
```

---

## How to Run

### Running MATLAB Programs

1. Open MATLAB.
2. Navigate to the repository directory.
3. Run the script:

```matlab
CaesarCipher
```

or open the `.m` file and execute it.

---

### Running Python Programs

Navigate to the **Python Equivalent** folder and run:

```bash
python caesar_cipher.py
```

Example:

```bash
cd "Python Equivalent"
python hill_cipher.py
```

---

## Purpose of This Repository

This project demonstrates:

* Conversion of MATLAB cryptographic code to Python
* Understanding algorithm logic independent of programming language
* Practical implementation of encryption, hashing, and digital signatures

It can also serve as a **reference for students studying cryptography or network security**.

---

## Disclaimer

These implementations are **for educational purposes only**.
They are simplified versions of cryptographic algorithms and **should not be used in real-world security systems**.

---

## Author

Created as part of a **cryptography learning project** to explore algorithm implementation and language translation between MATLAB and Python.
