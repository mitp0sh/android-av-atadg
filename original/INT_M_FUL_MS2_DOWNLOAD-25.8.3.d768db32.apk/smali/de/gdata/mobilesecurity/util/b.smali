.class Lde/gdata/mobilesecurity/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/GdDialogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/util/GdDialogFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/b;->a:Lde/gdata/mobilesecurity/util/GdDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
