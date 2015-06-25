.class public final Lcom/google/android/gms/wallet/LineItem$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wallet/LineItem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/LineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/LineItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setRole(I)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput p1, v0, Lcom/google/android/gms/wallet/LineItem;->e:I

    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->a:Lcom/google/android/gms/wallet/LineItem;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->c:Ljava/lang/String;

    return-object p0
.end method
