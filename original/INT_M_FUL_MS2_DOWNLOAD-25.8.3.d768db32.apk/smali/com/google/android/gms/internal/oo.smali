.class public Lcom/google/android/gms/internal/oo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/op$a;


# instance fields
.field private final a:Lcom/google/android/gms/internal/op;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/oo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oo;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/op;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/op;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/op$a;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->a:Lcom/google/android/gms/internal/op;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->b:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oo;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot reuse one-time logger after sending."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->a:Lcom/google/android/gms/internal/op;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/op;->b(Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/app/PendingIntent;)V
    .locals 3

    const-string v0, "OneTimePlayLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logger connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public on()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->a:Lcom/google/android/gms/internal/op;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/op;->stop()V

    return-void
.end method

.method public oo()V
    .locals 2

    const-string v0, "OneTimePlayLogger"

    const-string v1, "logger connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public send()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->a:Lcom/google/android/gms/internal/op;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/op;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->b:Z

    return-void
.end method