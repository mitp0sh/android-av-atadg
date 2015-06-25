.class Lde/gdata/mobilesecurity/activities/antiphishing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/f;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/f;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    const-string v1, "Disconnect from WiFi"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->logArpLine(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/f;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antiphishing/f;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->a(Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antiphishing/f;->a:Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antiphishing/ArpWarning;->finish()V

    .line 178
    return-void
.end method
