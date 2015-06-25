.class public Lcom/google/android/gms/internal/mz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/np;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/np",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/na;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/np;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/np",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mz;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mz;->c:Lcom/google/android/gms/internal/np;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mz;->e:Lcom/google/android/gms/internal/na;

    iput-object p3, p0, Lcom/google/android/gms/internal/mz;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/np;)Lcom/google/android/gms/internal/mz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/np",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;)",
            "Lcom/google/android/gms/internal/mz;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/np;)V

    return-object v0
.end method
