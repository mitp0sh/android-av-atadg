.class final Lde/gdata/mobilesecurity/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/q;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lde/gdata/mobilesecurity/util/q;->b:Ljava/lang/Class;

    .line 48
    iput-object p3, p0, Lde/gdata/mobilesecurity/util/q;->c:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/q;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/q;->d:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/util/q;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/q;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/util/q;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/q;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/util/q;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/q;->c:Landroid/os/Bundle;

    return-object v0
.end method
