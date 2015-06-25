.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final INTENT_EXTRA_CALLER:Ljava/lang/String; = "caller"

.field public static final INTENT_EXTRA_OPTION:Ljava/lang/String; = "option"

.field public static final INTENT_EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final INTENT_EXTRA_REQUEST_EXT_DATA:Ljava/lang/String; = "red"

.field public static final INTENT_EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final INTENT_EXTRA_USERNAME:Ljava/lang/String; = "username"

.field public static final IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field public static final OPTION_REQUEST_EXTENSION_DATA_ONLY:Ljava/lang/String; = "red"

.field public static final RECEIVE_UPDATE_STATUS:Ljava/lang/String; = "de.gdata.RECEIVE_UPDATE_STATUS"

.field public static final STATUS_UPDATE_SERVICE_ABORTED:I

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Z

.field private static volatile f:Z


# instance fields
.field a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

.field b:Landroid/app/NotificationManager;

.field c:Landroid/support/v4/app/NotificationCompat$Builder;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d:Ljava/lang/String;

    .line 50
    sput-boolean v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e:Z

    .line 51
    sput-boolean v1, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    .line 58
    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->g:Landroid/content/Context;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->h:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->i:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->j:Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->k:I

    .line 86
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(ILde/gdata/mobilesecurity/updateserverconnection/Update;)V

    .line 176
    return-void
.end method

.method private a(ILde/gdata/mobilesecurity/updateserverconnection/Update;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update terminated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v1, "red"

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a:Lde/gdata/mobilesecurity/updateserverconnection/structs/RedStruct;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    :cond_0
    sput-boolean v3, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e:Z

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v2, "de.gdata.RECEIVE_UPDATE_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "red"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    const-string v0, "caller"

    sget-object v2, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 196
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 197
    invoke-virtual {p2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->updateAPK(Z)I

    .line 199
    :cond_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d()V

    .line 200
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->stopSelf()V

    .line 201
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(I)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;ILde/gdata/mobilesecurity/updateserverconnection/Update;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->a(ILde/gdata/mobilesecurity/updateserverconnection/Update;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->f:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 32
    sput-boolean p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->f:Z

    return p0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x8000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b:Landroid/app/NotificationManager;

    .line 129
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const v2, 0x7f0d001a

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f02015c

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f0d00f4

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 136
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    return-void
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->i:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b:Landroid/app/NotificationManager;

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->k:I

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 144
    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    const-string v1, "de.gdata.RECEIVE_UPDATE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->g:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b:Landroid/app/NotificationManager;

    iget v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->k:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 150
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/f;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/updateserverconnection/f;-><init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;)V

    .line 167
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/f;->start()V

    .line 168
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskUpdateService: start failed ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e:Z

    return v0
.end method

.method public static showProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->showProgressDialog(Landroid/content/Context;ILjava/lang/Boolean;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;ILjava/lang/Boolean;)Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 307
    const-string v0, ""

    if-lez p1, :cond_1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 310
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/e;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/updateserverconnection/e;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 319
    :cond_0
    return-object v0

    .line 307
    :cond_1
    const p1, 0x7f0d0038

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 117
    const-string v0, "TaskUpdateService starting ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->b()V

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e:Z

    .line 122
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->f:Z

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e:Z

    .line 158
    const-string v0, "TaskUpdateService stopping ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->g:Landroid/content/Context;

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "caller"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "caller"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->d:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->h:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->i:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "option"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "option"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->j:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-direct {p0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskUpdateService;->e()V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 103
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 105
    :cond_4
    const-string v0, ""

    goto :goto_3
.end method
