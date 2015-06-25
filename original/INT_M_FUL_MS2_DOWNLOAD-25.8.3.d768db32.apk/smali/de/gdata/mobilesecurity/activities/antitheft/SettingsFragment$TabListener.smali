.class public Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->a:Ljava/lang/String;

    .line 638
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    .line 639
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Select tab no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 645
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment$TabListener;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->postInvalidate()V

    .line 646
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 650
    return-void
.end method
