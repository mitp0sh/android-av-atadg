.class Lde/gdata/mobilesecurity/privacy/r;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/DetailSettings;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/DetailSettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 186
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/r;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/privacy/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/s;-><init>(Lde/gdata/mobilesecurity/privacy/r;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method
