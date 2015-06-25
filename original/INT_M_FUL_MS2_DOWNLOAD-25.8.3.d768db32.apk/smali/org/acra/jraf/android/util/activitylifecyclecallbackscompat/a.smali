.class Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;


# direct methods
.method public constructor <init>(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    check-cast p1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;

    .line 85
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    iget-object v1, p1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityPaused(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityResumed(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStarted(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/a;->a:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    invoke-interface {v0, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStopped(Landroid/app/Activity;)V

    .line 65
    return-void
.end method
