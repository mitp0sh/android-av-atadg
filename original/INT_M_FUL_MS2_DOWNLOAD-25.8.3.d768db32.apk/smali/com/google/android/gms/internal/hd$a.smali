.class public Lcom/google/android/gms/internal/hd$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hh;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Z)Lcom/google/android/gms/internal/hd$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hd$a;->c:Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/hh;)Lcom/google/android/gms/internal/hd$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ar(Ljava/lang/String;)Lcom/google/android/gms/internal/hd$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public fD()Lcom/google/android/gms/internal/hd;
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/hd;

    iget-object v2, p0, Lcom/google/android/gms/internal/hd$a;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hd$a;->c:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/hd$a;->d:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/hd$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/hh;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/hh;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hd;-><init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/hh;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method