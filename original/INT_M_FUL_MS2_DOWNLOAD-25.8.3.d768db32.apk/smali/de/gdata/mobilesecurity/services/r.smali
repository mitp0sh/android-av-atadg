.class Lde/gdata/mobilesecurity/services/r;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/p;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/p;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/r;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 2222
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 2223
    if-eqz p1, :cond_0

    .line 2224
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/r;->a:Lde/gdata/mobilesecurity/services/p;

    iget-object v0, v0, Lde/gdata/mobilesecurity/services/p;->a:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2225
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/r;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/p;->interrupt()V

    .line 2227
    :cond_0
    return-void
.end method
