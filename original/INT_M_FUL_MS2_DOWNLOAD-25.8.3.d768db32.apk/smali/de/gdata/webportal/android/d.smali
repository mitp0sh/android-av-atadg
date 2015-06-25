.class Lde/gdata/webportal/android/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lde/gdata/webportal/android/d;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lde/gdata/webportal/android/d;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v0}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/webportal/android/d;->a:Lde/gdata/webportal/android/RegisterFragment;

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Lde/gdata/webportal/android/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    iget-object v0, p0, Lde/gdata/webportal/android/d;->a:Lde/gdata/webportal/android/RegisterFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/webportal/android/RegisterFragment;->a(Lde/gdata/webportal/android/RegisterFragment;Z)V

    .line 264
    return-void
.end method
