.class public Lde/gdata/mobilesecurity/activities/logs/LogFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;
.implements Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;
.implements Lde/gdata/mobilesecurity/scan/NotifyProgress;
.implements Lde/gdata/mobilesecurity/util/EulaListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;",
        "Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;",
        "Lde/gdata/mobilesecurity/scan/NotifyProgress;",
        "Lde/gdata/mobilesecurity/util/EulaListener;"
    }
.end annotation


# static fields
.field public static final RELOAD_LOGS:Ljava/lang/String; = "RELOAD_LOGS"

.field private static volatile d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

.field private static p:Z

.field private static s:Landroid/support/v4/app/FragmentManager;


# instance fields
.field a:Z

.field private b:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

.field private c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field public mListView:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

.field private q:Lde/gdata/mobilesecurity/util/EulaListener;

.field private r:Landroid/widget/TextView;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 79
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->b:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    .line 108
    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->q:Lde/gdata/mobilesecurity/util/EulaListener;

    .line 112
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/t;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/logs/t;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->t:Landroid/content/BroadcastReceiver;

    .line 840
    return-void
.end method

.method static synthetic a()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->s:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 433
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->q:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-static {p1, v0, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setLogMainEntries(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;Lde/gdata/mobilesecurity/util/EulaListener;)V

    .line 434
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/LogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->clearAllLogEntries(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeAllCustomNotifications()V

    .line 385
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 387
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->notifyDataSetInvalidated()V

    .line 388
    return-void
.end method

.method static synthetic b()Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 201
    const/4 v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 203
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->clearOldLogEntries(Landroid/content/Context;Ljava/util/Date;)V

    .line 204
    const-string v0, "Old log entries successfully deleted."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while deleting old log entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteLogEntryFromDB(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 332
    invoke-static {p0, p1, p2}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->deleteLogEntry(Landroid/content/Context;J)V

    .line 333
    return-void
.end method

.method public static getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;->getProfile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setLogMainEntries(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;Lde/gdata/mobilesecurity/util/EulaListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Lde/gdata/mobilesecurity/util/EulaListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v2, 0x0

    .line 439
    const/4 v11, 0x1

    .line 440
    const/4 v12, 0x2

    .line 441
    const/4 v13, 0x4

    .line 443
    new-instance v3, Lde/gdata/mobilesecurity/util/BasePreferences;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 446
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getDeviceInfected()I

    move-result v5

    sget v6, Lde/gdata/mobilesecurity/receiver/TaskIcon;->DEVICE_INFECTED_STATE_NONE:I

    if-le v5, v6, :cond_0

    const/4 v2, 0x1

    .line 448
    :cond_0
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getFirstStartDateTime()J

    move-result-wide v8

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v14

    add-long/2addr v8, v14

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 450
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfScan()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfScan()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    :cond_1
    add-int/2addr v2, v12

    .line 453
    :cond_2
    new-instance v5, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v5

    .line 455
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastSignatureUpdate()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 456
    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 457
    :cond_3
    const/16 v3, 0x1c

    invoke-static {v6, v3}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/2addr v2, v13

    .line 476
    :cond_4
    :goto_0
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanEnabled()Z

    move-result v3

    if-nez v3, :cond_22

    .line 477
    and-int/lit8 v2, v2, -0x5

    move v10, v2

    .line 480
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 482
    new-instance v7, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 484
    new-instance v2, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 485
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeCustomNotification(I)V

    .line 487
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 489
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lde/gdata/mobilesecurity/mms/json/EulaPostRequest;->getLanguageCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/database/core/dao/Eula;->getCustomEulaBody(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->wasMMSEulaShown()Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v5, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 492
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 493
    if-eqz v9, :cond_7

    .line 494
    const v2, 0x7f0b029b

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 495
    if-eqz v2, :cond_5

    const v3, 0x7f0d0391

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 497
    :cond_5
    const v2, 0x7f0b029a

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 498
    if-eqz v2, :cond_6

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/w;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lde/gdata/mobilesecurity/activities/logs/w;-><init>(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;Ljava/lang/String;Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    :cond_7
    :goto_2
    if-lez v10, :cond_1a

    .line 522
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 523
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 524
    if-eqz v2, :cond_a

    .line 525
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    and-int v3, v10, v11

    if-eqz v3, :cond_a

    .line 527
    const v3, 0x7f0b0291

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 528
    if-eqz v3, :cond_8

    const v4, 0x7f0d03b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 530
    :cond_8
    const v3, 0x7f0b0152

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 531
    if-eqz v3, :cond_9

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    new-instance v3, Lde/gdata/mobilesecurity/activities/logs/x;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/logs/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :cond_a
    and-int v2, v10, v12

    if-eqz v2, :cond_18

    .line 551
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 552
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 553
    if-eqz v2, :cond_d

    .line 554
    const v3, 0x7f0b0295

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 555
    if-eqz v3, :cond_b

    const v4, 0x7f0d03cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 557
    :cond_b
    const v3, 0x7f0b0294

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 558
    if-eqz v3, :cond_c

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    :cond_c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    new-instance v3, Lde/gdata/mobilesecurity/activities/logs/y;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/gdata/mobilesecurity/activities/logs/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    :cond_d
    :goto_3
    and-int v2, v10, v13

    if-eqz v2, :cond_19

    .line 584
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 585
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 586
    if-eqz v2, :cond_10

    .line 587
    const v3, 0x7f0b0298

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 588
    if-eqz v3, :cond_e

    const v4, 0x7f0d03d1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :cond_e
    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 591
    if-eqz v3, :cond_f

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    new-instance v3, Lde/gdata/mobilesecurity/activities/logs/z;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lde/gdata/mobilesecurity/activities/logs/z;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    :cond_10
    :goto_4
    return-void

    .line 459
    :cond_11
    const/16 v3, 0x1c

    invoke-static {v5, v3}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/2addr v2, v13

    goto/16 :goto_0

    .line 463
    :cond_12
    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfScan()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_13

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getTimeOfScan()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 465
    :cond_13
    add-int/2addr v2, v12

    .line 466
    :cond_14
    new-instance v5, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    .line 467
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v5

    .line 468
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->getLastSignatureUpdate()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 469
    if-eqz v5, :cond_15

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 470
    :cond_15
    const/16 v3, 0x1c

    invoke-static {v6, v3}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/2addr v2, v13

    goto/16 :goto_0

    .line 472
    :cond_16
    const/16 v3, 0x1c

    invoke-static {v5, v3}, Lde/gdata/mobilesecurity/util/MyDate;->isOlderThan(Ljava/util/Date;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/2addr v2, v13

    goto/16 :goto_0

    .line 514
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 515
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 516
    if-eqz v2, :cond_7

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 577
    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 578
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 579
    if-eqz v2, :cond_d

    .line 580
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 615
    :cond_19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 616
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 617
    if-eqz v2, :cond_10

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 621
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 622
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 623
    if-eqz v2, :cond_1b

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 624
    :cond_1b
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 625
    if-eqz v2, :cond_1c

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 627
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 628
    if-eqz v2, :cond_10

    .line 629
    const v3, 0x7f0b0291

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 630
    if-eqz v3, :cond_1d

    const v4, 0x7f0d04c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 631
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 632
    const v3, 0x7f0b0152

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 633
    if-eqz v3, :cond_1e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :cond_1e
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 637
    invoke-static/range {p0 .. p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->isRegisteredTrial()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-static/range {p0 .. p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->getTrialState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1f

    invoke-static/range {p0 .. p0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/Trial;->getTrialState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_10

    .line 640
    :cond_1f
    const-wide/16 v4, -0x1

    .line 641
    const v3, 0x7f0b0292

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 642
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 644
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLoginLimit()Ljava/util/Date;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->getDateDiff(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 645
    :cond_20
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_21

    .line 646
    const v3, 0x7f0d04c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 649
    :cond_21
    const v3, 0x7f0d04c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_22
    move v10, v2

    goto/16 :goto_1
.end method

.method public static setProfileProvider(Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;)V
    .locals 0

    .prologue
    .line 126
    sput-object p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->d:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ProfileProvider;

    .line 127
    return-void
.end method

.method public static setServicIsRunning(ZLandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 777
    if-eqz p1, :cond_0

    if-eqz p0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 778
    :cond_0
    if-eqz p2, :cond_1

    if-nez p0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 777
    goto :goto_0

    :cond_3
    move v1, v2

    .line 778
    goto :goto_1
.end method


# virtual methods
.method public advance(I)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 813
    :cond_0
    return-void
.end method

.method public finished()V
    .locals 2

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setServiceIsRunning(Z)V

    .line 795
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_0

    .line 797
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Landroid/content/Context;)V

    .line 799
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isOrangeOemVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->deleteLogEntryByMsgId(Landroid/content/Context;I)V

    .line 804
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_1

    const-string v1, "SCAN_TYPE_IN_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const-string v1, "SCAN_TYPE_IN_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 808
    :cond_1
    return-void
.end method

.method public flipIndeterminate(Z)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 833
    :cond_0
    return-void
.end method

.method public onAccepted()V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setHasOptionsMenu(Z)V

    .line 177
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 179
    const v1, 0x65c7e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    .line 183
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    invoke-static {}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getScanIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 185
    iput-object p0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->q:Lde/gdata/mobilesecurity/util/EulaListener;

    .line 186
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/ac;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ac;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 766
    const/16 v0, 0x539

    const v1, 0x7f0d0336

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 768
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 769
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 222
    const v0, 0xff0001

    .line 223
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->s:Landroid/support/v4/app/FragmentManager;

    .line 224
    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 226
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 231
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 232
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->mListView:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    .line 233
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->f:Landroid/view/View;

    .line 234
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->e:Landroid/view/View;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a:Z

    .line 237
    const v0, 0x7f0b029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->g:Landroid/widget/LinearLayout;

    .line 238
    const v0, 0x7f0b029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    .line 239
    const v0, 0x7f0b029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->h:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0b029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->m:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0b0291

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->k:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->k:Landroid/widget/TextView;

    const v2, 0x7f0d04c5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    const v0, 0x7f0b028f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->l:Landroid/widget/LinearLayout;

    .line 245
    const v0, 0x7f0b02a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->r:Landroid/widget/TextView;

    .line 247
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    const v0, 0x7f0b0290

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    const v0, 0x7f0b0293

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    const v0, 0x7f0b0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->n:Ljava/util/ArrayList;

    const v0, 0x7f0b0299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    const v2, 0x7f0b02a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2, p0, p0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;-><init>(Landroid/view/View;Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->o:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    .line 254
    const v0, 0x7f0b02a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 255
    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/u;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/logs/u;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 192
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/v;

    invoke-direct {v1, p0, p2}, Lde/gdata/mobilesecurity/activities/logs/v;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 365
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListShown(Z)V

    .line 371
    :goto_1
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c()V

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListShownNoAnimation(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 377
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x539

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->newInstance(Ljava/lang/String;)Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->b:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->b:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/LogFragment$ClearLogDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 421
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->o:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->getIsUndoBarActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->o:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->hideUndoBar(Z)V

    .line 425
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 427
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->onRedo()V

    .line 430
    return-void
.end method

.method public onRedo()V
    .locals 0

    .prologue
    .line 922
    return-void
.end method

.method public onRejected()V
    .locals 0

    .prologue
    .line 917
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 392
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 393
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->mListView:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->o:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-direct {v0, v1, v5, v2, v3}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListShown(Z)V

    .line 398
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    const-string v1, "SCAN_TYPE_IN_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    const-string v2, "SCAN_TYPE_IN_PROGRESS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setServiceIsRunning(Z)V

    .line 405
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->isRunning(Landroid/content/Context;)V

    .line 407
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a(Landroid/content/Context;)V

    .line 409
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 411
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->j:Lde/gdata/mobilesecurity/activities/logs/LogFragment$ScanBroadcastReceiver;

    invoke-static {}, Lde/gdata/mobilesecurity/fragments/ScanFragment;->getScanIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 414
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->t:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "RELOAD_LOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 415
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setServiceIsRunning(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method public onUndo(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->getDeletedItems()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/scan/LogEntry;

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting log entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->clearDeletedItems()V

    .line 326
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 328
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->c:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->notifyDataSetInvalidated()V

    .line 329
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 784
    :cond_0
    return-void
.end method

.method public setAdvanceStep(I)V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 818
    :cond_0
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListShown(ZZ)V

    .line 292
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a:Z

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->a:Z

    .line 272
    if-eqz p1, :cond_2

    .line 273
    if-eqz p2, :cond_1

    .line 274
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_2
    if-eqz p2, :cond_3

    .line 281
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setListShown(ZZ)V

    .line 297
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 838
    :cond_0
    return-void
.end method

.method protected setServiceIsRunning(Z)V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->l:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setServicIsRunning(ZLandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 773
    return-void
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :cond_0
    return-void
.end method
