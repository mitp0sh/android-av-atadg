.class public abstract Lh/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lh/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lh/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/h;

    invoke-direct {v0, p0}, Lh/h;-><init>(Lh/b;)V

    iput-object v0, p0, Lh/b;->d:Lh/f;

    return-void
.end method

.method static synthetic a(Lh/b;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lh/b;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lh/b;Lh/a;)Lh/a;
    .locals 0

    iput-object p1, p0, Lh/b;->a:Lh/a;

    return-object p1
.end method

.method static synthetic a(Lh/b;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lh/b;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lh/b;)Lh/a;
    .locals 1

    iget-object v0, p0, Lh/b;->a:Lh/a;

    return-object v0
.end method


# virtual methods
.method public a()Lh/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lh/b;->a:Lh/a;

    return-object v0
.end method
