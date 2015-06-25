.class public Lde/gdata/mobilesecurity/receiver/TaskIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_NOTIFICATION_APPLOCK_DEACTIVATED:I = 0xe

.field public static final CUSTOM_NOTIFICATION_ARP_POISONING_DETECTED:I = 0x9

.field public static final CUSTOM_NOTIFICATION_INFECTED_MALWARE:I = 0x1

.field public static final CUSTOM_NOTIFICATION_INFECTED_PUP:I = 0x2

.field public static final CUSTOM_NOTIFICATION_NEWS:I = 0x4

.field public static final CUSTOM_NOTIFICATION_PRIVACY:I = 0x7

.field public static final CUSTOM_NOTIFICATION_SCAN_OUTDATED:I = 0x6

.field public static final CUSTOM_NOTIFICATION_SIGS_OUTDATED:I = 0x5

.field public static final CUSTOM_NOTIFICATION_SIM_CHANGED:I = 0x8

.field public static final CUSTOM_NOTIFICATION_SOFTWARE_UPDATE_AVAILABLE:I = 0x3

.field public static final CUSTOM_NOTIFICATION_SUBSCRIPTION_CANCELED:I = 0xb

.field public static final CUSTOM_NOTIFICATION_SUBSCRIPTION_ERROR:I = 0xc

.field public static final CUSTOM_NOTIFICATION_SUBSCRIPTION_NETWORK_ERROR:I = 0xd

.field public static final CUSTOM_NOTIFICATION_SUBSCRIPTION_STARTED:I = 0xa

.field public static final CUSTOM_NOTIFICATION_UNDEFINED:I = 0x0

.field public static DEVICE_INFECTED_STATE_MALWARE:I = 0x0

.field public static DEVICE_INFECTED_STATE_NONE:I = 0x0

.field public static DEVICE_INFECTED_STATE_PUP:I = 0x0

.field public static final EXTRA_PERSISTENT_NOTIFICATION:Ljava/lang/String; = "NOTIFICATION"

.field public static NOTIFICATION_TEXT_NEWS_COUNT:I = 0x0

.field public static final PERSISTENT_NOTIFICATION_ID:I = 0x65c7b

.field private static a:Landroid/app/Notification;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:Ljava/lang/Integer;

.field private static h:Ljava/lang/Integer;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lde/gdata/mobilesecurity/util/BasePreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    sput-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->b:Ljava/lang/Class;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    .line 71
    sput v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->f:I

    .line 74
    sput-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->g:Ljava/lang/Integer;

    .line 75
    sput-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->h:Ljava/lang/Integer;

    .line 80
    sput v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    .line 81
    const/4 v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_MALWARE:I

    .line 82
    const/4 v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_PUP:I

    .line 85
    const/4 v0, -0x1

    sput v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->NOTIFICATION_TEXT_NEWS_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 299
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    .line 300
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    .line 301
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/receiver/TaskIcon;)Lde/gdata/mobilesecurity/util/BasePreferences;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    return-object v0
.end method

.method private declared-synchronized a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "de.gdata.mobilesecurity.intents.Main"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->b:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->b:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_3
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0x106000c

    .line 528
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 531
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 532
    const-string v1, "TITLE_SAMPLE"

    const-string v2, "TEXT_SAMPLE"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 533
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 534
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 535
    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(Landroid/view/ViewGroup;)V

    .line 536
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->h:Ljava/lang/Integer;

    .line 539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->g:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 550
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 551
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 553
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    const-string v4, "TITLE_SAMPLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v4, Lde/gdata/mobilesecurity/receiver/TaskIcon;->h:Ljava/lang/Integer;

    .line 557
    :cond_0
    const-string v4, "TEXT_SAMPLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    sput-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->g:Ljava/lang/Integer;

    .line 550
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 564
    :cond_3
    return-void
.end method

.method private a(ILde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->isEulaAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x0

    .line 195
    new-instance v1, Lde/gdata/mobilesecurity/scan/LogEntry;

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/content/Context;)V

    .line 197
    :try_start_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getInstance(Landroid/content/Context;)Lde/gdata/mobilesecurity/database/core/DatabaseHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 241
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 244
    :goto_1
    :pswitch_1
    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insertOrReplace(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "addCustomNotification"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 255
    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :pswitch_2
    const/4 v2, 0x6

    :try_start_2
    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 202
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v2

    .line 249
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    if-eqz v0, :cond_3

    const-string v0, "addCustomNotification"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :pswitch_3
    const/16 v2, 0x1d

    :try_start_4
    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 207
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_4

    const-string v1, "addCustomNotification"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    :cond_4
    throw v0

    .line 210
    :pswitch_4
    const/16 v2, 0x1b

    :try_start_5
    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 211
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto :goto_1

    .line 214
    :pswitch_5
    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 215
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto :goto_1

    .line 220
    :pswitch_6
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 221
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto :goto_1

    .line 224
    :pswitch_7
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    goto :goto_1

    .line 227
    :pswitch_8
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 228
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto/16 :goto_1

    .line 231
    :pswitch_9
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 232
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    goto/16 :goto_1

    .line 235
    :pswitch_a
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    goto/16 :goto_1

    .line 238
    :pswitch_b
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 252
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/receiver/TaskIcon;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getCustomNotificationQueryTexts(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 7

    .prologue
    const v1, 0x7f0d03cb

    const v0, 0x7f0d03cc

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 692
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 693
    const v3, 0x7f0d0240

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 694
    const/4 v3, 0x2

    const v4, 0x7f0d021e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 696
    packed-switch p1, :pswitch_data_0

    .line 725
    :goto_0
    return-object v2

    .line 698
    :pswitch_0
    const v3, 0x7f0d03bc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 699
    new-instance v3, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 703
    :pswitch_1
    const v3, 0x7f0d03bb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 704
    new-instance v3, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;-><init>()V

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 708
    :pswitch_2
    const v1, 0x7f0d03d0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 709
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_0

    .line 712
    :pswitch_3
    const v0, 0x7f0d03c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 713
    const v0, 0x7f0d03ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_0

    .line 716
    :pswitch_4
    const v0, 0x7f0d03c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 717
    const v0, 0x7f0d03c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_0

    .line 720
    :pswitch_5
    const v0, 0x7f0d03d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 721
    const v0, 0x7f0d03cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto/16 :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static getPersistentNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCustomNotification(IIIII)Z
    .locals 7

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 171
    if-ltz p5, :cond_0

    .line 172
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-virtual {v0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 176
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;IIII)V

    invoke-direct {p0, p1, v0, v6}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(ILde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 173
    :cond_0
    if-ltz p2, :cond_1

    .line 174
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v6, v0

    goto :goto_0
.end method

.method public declared-synchronized addCustomNotification(ILjava/lang/String;II)Z
    .locals 6

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;ILjava/lang/String;II)V

    invoke-direct {p0, p1, v0, p2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(ILde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomNotificationCount()I
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnreadNewsTickerText(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v2, 0x7f0d03c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getUnreadNewsTickerTextSuffix(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadNewsTickerTextSuffix(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 513
    const-string v0, ""

    .line 514
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v2, 0x7f0d03c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 516
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v1, 0x7f0d03c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string v1, "%d"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_1
    return-object v0
.end method

.method public declared-synchronized hasCustomNotification(I)Z
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hide()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 490
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    .line 493
    const v1, 0x65c7b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 495
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processCustomNotification(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;I)Landroid/support/v4/app/DialogFragment;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationCount()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 576
    packed-switch p3, :pswitch_data_0

    .line 607
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 581
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->showScanOutdatedDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 584
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 585
    const-class v2, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 586
    const-string v2, "selectItem"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 592
    :pswitch_3
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->showSigsOutdatedDialog(Landroid/app/Activity;ILandroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 600
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 601
    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized removeAllCustomNotifications()V
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 289
    const-string v0, ""

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCustomNotification(I)V
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized show(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    monitor-enter p0

    :try_start_0
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTrayIconType()Ljava/lang/String;

    move-result-object v9

    .line 341
    new-instance v10, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v10}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 343
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 476
    :goto_0
    monitor-exit p0

    return v0

    .line 348
    :cond_1
    :try_start_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->isShowTrayIcon()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 349
    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 356
    const/4 v2, 0x0

    .line 357
    const/4 v1, 0x0

    sput v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->f:I

    .line 358
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 359
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 361
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lde/gdata/mobilesecurity/receiver/TaskIcon;->f:I

    if-ge v6, v7, :cond_3

    .line 362
    :cond_4
    sget-object v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;

    .line 363
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_5
    :try_start_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v5, 0x7f0d03c7

    invoke-static {v1, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 372
    const-string v1, ""

    .line 373
    if-eqz v2, :cond_a

    .line 374
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getIconResouceId()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getIconResouceId()I

    move-result v5

    .line 377
    :goto_2
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getTickerIconResouceId()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getTickerIconResouceId()I

    move-result v6

    .line 379
    :goto_3
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_9

    .line 380
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 381
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 382
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_4

    .line 374
    :cond_6
    const v5, 0x7f020126

    goto :goto_2

    .line 377
    :cond_7
    const v6, 0x7f02012e

    goto :goto_3

    .line 384
    :cond_8
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getUnreadNewsTickerTextSuffix(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 385
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v2, 0x7f0d03c7

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v8, 0x7f0d03c5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 387
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getUnreadNewsTickerTextSuffix(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    move v7, v6

    move-object v8, v2

    move v6, v5

    move-object v5, v1

    .line 400
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v11, 0x7f0d03c5

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move v2, v4

    .line 403
    :goto_6
    if-nez v2, :cond_c

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 404
    const-string v1, "ifAction"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 405
    const v1, 0x65c7b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    move v0, v3

    .line 407
    goto/16 :goto_0

    .line 389
    :cond_9
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v10, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v1

    goto :goto_5

    .line 394
    :cond_a
    const v2, 0x7f020135

    .line 395
    const v5, 0x7f02012e

    .line 396
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v6, 0x7f0d03c5

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v10, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move v6, v2

    move-object v8, v7

    move v7, v5

    move-object v5, v1

    goto :goto_5

    :cond_b
    move v2, v3

    .line 400
    goto :goto_6

    .line 411
    :cond_c
    const/4 v1, 0x0

    .line 412
    invoke-direct {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 414
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v1, v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    const-string v3, "NOTIFICATION"

    sget v11, Lde/gdata/mobilesecurity/receiver/TaskIcon;->f:I

    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v3, v11, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 423
    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-ge v3, v11, :cond_10

    .line 425
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    sput-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    .line 426
    sget-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget-object v8, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v8, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 428
    sget-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 431
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v7, "de.gdata.mobilesecurity2"

    const v8, 0x7f030049

    invoke-direct {v3, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 433
    const v7, 0x7f0b0043

    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 434
    const v6, 0x7f0b017b

    iget-object v7, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v8, 0x7f0d03c7

    invoke-static {v7, v8}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 437
    const-string v6, "ifAction"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    if-nez v2, :cond_f

    .line 438
    const v5, 0x7f0b017a

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    iget-object v7, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v7, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 443
    :goto_7
    iget-object v5, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(Landroid/content/Context;)V

    .line 444
    const v5, 0x7f0b017b

    sget-object v6, Lde/gdata/mobilesecurity/receiver/TaskIcon;->h:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 445
    const v5, 0x7f0b017a

    sget-object v6, Lde/gdata/mobilesecurity/receiver/TaskIcon;->g:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 446
    sget-object v5, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 447
    sget-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 463
    :goto_8
    const-string v1, "ifAction"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v2, :cond_12

    .line 465
    :cond_e
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 468
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 473
    :goto_9
    const v1, 0x65c7b

    sget-object v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move v0, v4

    .line 476
    goto/16 :goto_0

    .line 441
    :cond_f
    const v6, 0x7f0b017a

    iget-object v7, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v7, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_7

    .line 449
    :cond_10
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v6, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v6, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v6, "416891"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sput-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    .line 455
    const-string v3, "ifAction"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v2, :cond_11

    .line 456
    sget-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget-object v5, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    const v7, 0x7f0d03c7

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-static {v7, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_8

    .line 460
    :cond_11
    sget-object v3, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget-object v6, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->c:Landroid/content/Context;

    invoke-virtual {v3, v6, v8, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_8

    .line 471
    :cond_12
    sget-object v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9
.end method

.method public showScanOutdatedDialog(Landroid/support/v4/app/FragmentActivity;I)Landroid/support/v4/app/DialogFragment;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 611
    invoke-static {p1, p2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationQueryTexts(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 613
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 614
    const v1, 0x7f0d00f4

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v8

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    new-instance v5, Lde/gdata/mobilesecurity/receiver/c;

    invoke-direct {v5, p0, p2, v6}, Lde/gdata/mobilesecurity/receiver/c;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;ILandroid/content/Context;)V

    new-instance v6, Lde/gdata/mobilesecurity/receiver/d;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/receiver/d;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, v8}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 637
    return-object v0
.end method

.method public showSigsOutdatedDialog(Landroid/app/Activity;ILandroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/DialogFragment;
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 642
    invoke-static {p1, p2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getCustomNotificationQueryTexts(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedUsername()Ljava/lang/String;

    move-result-object v6

    .line 645
    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon;->d:Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDecryptedPassword()Ljava/lang/String;

    move-result-object v7

    .line 647
    new-array v1, v4, [Ljava/lang/String;

    aput-object v6, v1, v8

    aput-object v7, v1, v3

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 666
    :goto_0
    return-object v0

    .line 651
    :cond_0
    const v1, 0x7f0d00f4

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v8

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    new-instance v5, Lde/gdata/mobilesecurity/receiver/e;

    invoke-direct {v5, p0, p1, v6, v7}, Lde/gdata/mobilesecurity/receiver/e;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lde/gdata/mobilesecurity/receiver/f;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/receiver/f;-><init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, v8}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    goto :goto_0
.end method

.method public startUpdateService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 673
    :try_start_0
    const-string v1, "startUpdateService"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 676
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskIcon: couldn\'t execute startUpdateService() for activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->hide()Z

    .line 330
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
