.class public Lde/gdata/mobilesecurity/gcm/GcmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static broadcastGcmMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "de.gdata.mobilesecurity.DISPLAY_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDeletedMessages()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "Received deleted messages notification"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 69
    sget v0, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->a:I

    .line 71
    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, p2, v1, v2}, Lde/gdata/mobilesecurity/services/WatcherService;->insertLogEntry(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 72
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 33
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string v2, "send_error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    invoke-static {p1}, Lde/gdata/mobilesecurity/gcm/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 46
    return-void

    .line 38
    :cond_1
    const-string v0, "deleted_messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->onDeletedMessages()V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "Received message"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    sput v1, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->a:I

    .line 60
    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/gcm/GcmIntentService;->broadcastGcmMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method
