.class Lde/gdata/mobilesecurity/privacy/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/m;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/m;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/n;->a:Lde/gdata/mobilesecurity/privacy/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/n;->a:Lde/gdata/mobilesecurity/privacy/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void
.end method
