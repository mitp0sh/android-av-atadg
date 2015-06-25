.class public Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Z

.field c:Z

.field d:Z

.field e:Landroid/view/View;

.field f:F

.field g:F

.field private h:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

.field private i:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

.field private j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lde/gdata/mobilesecurity/scan/LogEntry;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 62
    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 65
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 66
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->k:Ljava/util/HashMap;

    .line 68
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 69
    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->f:F

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g:F

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l:Ljava/util/HashMap;

    .line 203
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/j;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/logs/j;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->m:Landroid/view/View$OnTouchListener;

    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a:Landroid/app/Activity;

    .line 87
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->h:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    .line 89
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->i:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    .line 91
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 92
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 525
    if-eqz p2, :cond_0

    .line 526
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/p;

    invoke-direct {v0, p0, p2}, Lde/gdata/mobilesecurity/activities/logs/p;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;FFFFLjava/lang/Runnable;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x96

    .line 492
    .line 493
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 495
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_0

    .line 496
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v6, [F

    aput p2, v1, v4

    aput p3, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 498
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 499
    invoke-direct {p0, v0, p6}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    .line 500
    const/4 p6, 0x0

    .line 502
    :cond_0
    cmpl-float v0, p4, p5

    if-eqz v0, :cond_1

    .line 503
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v6, [F

    aput p4, v1, v4

    aput p5, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 504
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 505
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 506
    invoke-direct {p0, v0, p6}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 510
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    if-eqz p6, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/o;

    invoke-direct {v1, p0, p6}, Lde/gdata/mobilesecurity/activities/logs/o;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 536
    if-eqz p2, :cond_0

    .line 537
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/q;

    invoke-direct {v0, p0, p2}, Lde/gdata/mobilesecurity/activities/logs/q;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 544
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 426
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 427
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 428
    add-int v3, v1, v0

    .line 429
    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->getItemId(I)J

    move-result-wide v4

    .line 430
    if-eq v2, p2, :cond_0

    .line 431
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->k:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->h:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 437
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    .line 438
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l:Ljava/util/HashMap;

    iget-object v3, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getTableId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->deleteLogEntryFromDB(Landroid/content/Context;J)V

    .line 440
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 444
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 445
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/m;

    invoke-direct {v1, p0, v0, p1}, Lde/gdata/mobilesecurity/activities/logs/m;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/ViewTreeObserver;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 485
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/View;FFFFLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Landroid/view/View;FFFFLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Landroid/widget/ListView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->h:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->i:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method public static isRuntimePostHonycomb()Z
    .locals 2

    .prologue
    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRuntimePostIceCreamSandwich()Z
    .locals 2

    .prologue
    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public OCLstartScan(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 671
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setFragmentIsRunning(Landroid/content/Context;Z)V

    .line 672
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isTrialOutOfTrialPeriod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isProtectFeaturesUntilRegistration()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->isInvalidTrial()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setBitDefenderEnabled(Z)V

    .line 674
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 677
    if-nez p1, :cond_2

    .line 678
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startAppScan(Landroid/content/Context;)V

    .line 679
    const-string v0, "SCAN_TYPE_IN_PROGRESS"

    const-string v3, "START_APP_SCAN"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    .line 688
    :cond_0
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/scan/ScanService;->startFileScan(Landroid/content/Context;)V

    .line 682
    const-string v0, "SCAN_TYPE_IN_PROGRESS"

    const-string v3, "START_FILE_SCAN"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addExpandedLayoutViews(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 10

    .prologue
    const v9, 0x7f0b028c

    const v7, 0x7f0b028b

    const v4, 0x7f030070

    const/16 v8, 0x8

    .line 577
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v5

    .line 578
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 579
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getExpandedLayoutId()I

    move-result v1

    .line 581
    const v0, 0x7f0b023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    .line 583
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 584
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->removeAllViews()V

    .line 587
    :cond_0
    invoke-virtual {p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 588
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 589
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 590
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->addView(Landroid/view/View;)V

    .line 592
    const v2, 0x7f03006f

    if-ne v1, v2, :cond_4

    .line 593
    const v1, 0x7f0b0281

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 594
    const v2, 0x7f0b0283

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 595
    const v3, 0x7f0b0280

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 596
    const v4, 0x7f0b0282

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 597
    const v4, 0x7f0b0284

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 599
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    if-eq v5, v1, :cond_1

    const/16 v1, 0x12

    if-ne v5, v1, :cond_2

    .line 607
    :cond_1
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\(.*\\)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 610
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/r;

    invoke-direct {v2, p0, v5, v1}, Lde/gdata/mobilesecurity/activities/logs/r;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    :cond_2
    :goto_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->j:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 666
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 668
    :cond_3
    return-void

    .line 627
    :cond_4
    if-ne v1, v4, :cond_5

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v2

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_5

    .line 629
    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 630
    invoke-virtual {v0, v9}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 632
    new-instance v3, Lde/gdata/mobilesecurity/activities/logs/g;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/activities/logs/g;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/h;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/logs/h;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 645
    :cond_5
    if-ne v1, v4, :cond_2

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_2

    .line 647
    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 648
    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 650
    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 651
    const v2, 0x7f0d03cd

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 653
    invoke-virtual {v0, v9}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 655
    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/i;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/logs/i;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public animateSwipe(Landroid/view/View;FJZ)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 372
    iput-boolean v5, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    .line 373
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->h:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 374
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p5, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/k;

    invoke-direct {v1, p0, p1, p5}, Lde/gdata/mobilesecurity/activities/logs/k;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 416
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 375
    goto :goto_0

    .line 394
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->f:F

    invoke-direct {v2, v3, p2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 395
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    iget v4, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g:F

    if-eqz p5, :cond_2

    :goto_2
    invoke-direct {v3, v4, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 396
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 397
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 398
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 399
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/l;

    invoke-direct {v1, p0, p5, p1}, Lde/gdata/mobilesecurity/activities/logs/l;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;ZLandroid/view/View;)V

    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 395
    goto :goto_2
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    .line 98
    const-string v5, "id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 99
    const-string v6, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 100
    const-string v7, "warning"

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 101
    const-string v8, "infection"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 102
    const-string v9, "msg"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 103
    const-string v10, "msg_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 104
    const-string v11, "msg_extra"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 105
    const-string v12, "status"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 106
    const-string v13, "profile"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 108
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 109
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 110
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 111
    :goto_0
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    .line 112
    :goto_1
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 113
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 114
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 116
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 118
    const/16 v7, 0x1d

    if-ne v10, v7, :cond_4

    const/4 v7, 0x1

    move v9, v7

    .line 119
    :goto_2
    const/16 v7, 0x1d

    if-ne v10, v7, :cond_5

    if-eqz v11, :cond_5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    .line 123
    :goto_3
    :try_start_0
    new-instance v8, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-static/range {v16 .. v16}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v8, v0, v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V

    iput-object v8, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_4
    iget-object v8, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v8, v14, v15}, Lde/gdata/mobilesecurity/scan/LogEntry;->setTableId(J)V

    .line 133
    if-eqz v5, :cond_0

    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 134
    :cond_0
    if-eqz v6, :cond_1

    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/LogEntry;->setInfected()V

    .line 135
    :cond_1
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5, v10}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 136
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5, v11}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 137
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessage(Ljava/lang/String;)V

    .line 138
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5, v12}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V

    .line 139
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5, v13}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 141
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    iget-object v6, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->getImage()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-object v6, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->e:Landroid/widget/TextView;

    iget-object v6, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    iget-object v6, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->getExpandedHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->setExpandedHeight(I)V

    .line 147
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    iget-object v6, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->setSizeChangedListener(Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;)V

    .line 149
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/scan/LogEntry;->isExpanded()Z

    move-result v5

    if-nez v5, :cond_6

    .line 150
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->setVisibility(I)V

    .line 155
    :goto_5
    if-eqz v7, :cond_7

    .line 156
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 160
    :goto_6
    if-eqz v9, :cond_8

    .line 161
    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->a:Landroid/view/View;

    new-instance v5, Lde/gdata/mobilesecurity/activities/logs/f;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lde/gdata/mobilesecurity/activities/logs/f;-><init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    :goto_7
    return-void

    .line 110
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 111
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 118
    :cond_4
    const/4 v7, 0x0

    move v9, v7

    goto/16 :goto_2

    .line 119
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 125
    :catch_0
    move-exception v8

    .line 126
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while parsing ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "]: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 129
    new-instance v16, Lde/gdata/mobilesecurity/scan/LogEntry;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V

    move-object/from16 v0, v16

    iput-object v0, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    goto/16 :goto_4

    .line 152
    :cond_6
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->setVisibility(I)V

    goto :goto_5

    .line 158
    :cond_7
    iget-object v5, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    .line 168
    :cond_8
    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->m:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7
.end method

.method public clearDeletedItems()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 574
    return-void
.end method

.method public getDeletedItems()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lde/gdata/mobilesecurity/scan/LogEntry;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDeletedItemsCount()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 183
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 186
    new-instance v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;-><init>()V

    .line 187
    const v0, 0x7f0b0238

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->b:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f0b023a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 189
    const v0, 0x7f0b023b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->d:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0b023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->e:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0b023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;

    .line 192
    iput-object v1, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->a:Landroid/view/View;

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 197
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 200
    return-object v1
.end method

.method public setSwipePosition(Landroid/view/View;F)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 347
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 348
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 350
    sub-float v0, v3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 363
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p2, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 353
    iput p2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->f:F

    .line 354
    sub-float v0, v3, v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g:F

    .line 355
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g:F

    iget v3, p0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->g:F

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 356
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 357
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 358
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 359
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 360
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 361
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
