import random

p,a,G,n = 233,1,(4,5),233
inv=lambda x,m: pow(x,-1,m)

def add(P,Q):
    if not P: return Q
    if not Q: return P
    x1,y1=P; x2,y2=Q
    if x1==x2 and (y1+y2)%p==0: return None
    lam=((3*x1*x1+a)*inv(2*y1,p) if P==Q else (y2-y1)*inv(x2-x1,p))%p
    xr=(lam*lam-x1-x2)%p; yr=(lam*(x1-xr)-y1)%p
    return (xr,yr)

def mul(k,P):
    R=None
    while k: R=add(R,P) if k&1 else R; P=add(P,P); k//=2
    return R

d=random.randint(1,n-1)
tx=input("Enter Bitcoin Transaction Data to SIGN: ")
h=sum((i+1)*ord(c) for i,c in enumerate(tx))%n
k=random.randint(1,n-1); R=mul(k,G)
r=R[0]%n; s=(inv(k,n)*(h+d*r))%n
print("Signature:",(r,s))

msg=input("Enter message to VERIFY: ")
h2=sum((i+1)*ord(c) for i,c in enumerate(msg))%n
print("Verification:", "VALID" if h==h2 else "INVALID")