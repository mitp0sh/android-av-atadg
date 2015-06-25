.class public Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRE_ICS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->PRE_ICS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;

    invoke-direct {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;-><init>(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    return-void
.end method

.method private static a(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->get()Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->a(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 61
    return-void
.end method

.method private static b(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;

    invoke-direct {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;-><init>(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 94
    return-void
.end method

.method private static b(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->get()Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->b(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 89
    return-void
.end method

.method public static registerActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->PRE_ICS:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->a(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->a(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    goto :goto_0
.end method


# virtual methods
.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->PRE_ICS:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->b(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->b(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    goto :goto_0
.end method
