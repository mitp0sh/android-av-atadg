.class Lde/gdata/mobilesecurity/privacy/y;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/y;->a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMS_CONTACTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/y;->a:Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;->a(Lde/gdata/mobilesecurity/privacy/PrivacyBlocker;)V

    goto :goto_0
.end method
