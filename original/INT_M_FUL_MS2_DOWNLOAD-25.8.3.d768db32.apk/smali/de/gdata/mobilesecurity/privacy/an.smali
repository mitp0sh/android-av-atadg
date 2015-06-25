.class Lde/gdata/mobilesecurity/privacy/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lde/gdata/mobilesecurity/privacy/am;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/am;Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/an;->c:Lde/gdata/mobilesecurity/privacy/am;

    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/an;->a:Landroid/util/Pair;

    iput-object p3, p0, Lde/gdata/mobilesecurity/privacy/an;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/an;->c:Lde/gdata/mobilesecurity/privacy/am;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/am;->e:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/an;->a:Landroid/util/Pair;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/an;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/privacy/ag;->a(Lde/gdata/mobilesecurity/privacy/ag;Landroid/util/Pair;Landroid/graphics/drawable/Drawable;)V

    .line 1006
    return-void
.end method
