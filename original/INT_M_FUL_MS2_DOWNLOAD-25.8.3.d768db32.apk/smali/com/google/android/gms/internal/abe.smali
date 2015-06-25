.class Lcom/google/android/gms/internal/abe;
.super Lcom/google/android/gms/internal/abh;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pb;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/abe;->f:Lcom/google/android/gms/internal/pb;

    iput p3, p0, Lcom/google/android/gms/internal/abe;->a:I

    iput-object p4, p0, Lcom/google/android/gms/internal/abe;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/abe;->c:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/abe;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/abe;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/abh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/abd;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/abe;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 7

    iget v2, p0, Lcom/google/android/gms/internal/abe;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/abe;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/abe;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/abe;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/abe;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
