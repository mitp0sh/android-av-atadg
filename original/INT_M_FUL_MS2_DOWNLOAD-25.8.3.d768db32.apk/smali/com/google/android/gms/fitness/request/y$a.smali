.class public Lcom/google/android/gms/fitness/request/y$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/request/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/y$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/request/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/y$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bx(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/y$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/y$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public by(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/y$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/y$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public kl()Lcom/google/android/gms/fitness/request/y;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/request/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/y;-><init>(Lcom/google/android/gms/fitness/request/y$a;Lcom/google/android/gms/fitness/request/ba;)V

    return-object v0
.end method
