.class public Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->c:I

    .line 583
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->a:Ljava/lang/String;

    .line 584
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    .line 585
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Select tab no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 591
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 592
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 593
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 594
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->h()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->h()Landroid/support/v7/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 598
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b(I)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method
