.class Lde/gdata/mobilesecurity/privacy/aa;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/aa;->a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    .line 59
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/aa;->onChange(ZLandroid/net/Uri;)V

    .line 65
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/aa;->a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V

    .line 70
    return-void
.end method
