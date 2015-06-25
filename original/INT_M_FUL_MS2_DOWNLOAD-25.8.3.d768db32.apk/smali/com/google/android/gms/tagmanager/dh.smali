.class Lcom/google/android/gms/tagmanager/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/l$a",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/tagmanager/dl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/df;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dh;->a:Lcom/google/android/gms/tagmanager/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/dl;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/dl;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/android/gms/tagmanager/dl;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/dh;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/dl;)I

    move-result v0

    return v0
.end method
