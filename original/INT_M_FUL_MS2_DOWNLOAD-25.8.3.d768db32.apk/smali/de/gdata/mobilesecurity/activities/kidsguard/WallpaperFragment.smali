.class public Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field public static final IMAGE_RES_ID:Ljava/lang/String; = "IMAGE_RES_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v1, "IMAGE_RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    const v0, 0x7f030060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 35
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    .line 37
    const v0, 0x7f0201aa

    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/WallpaperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IMAGE_RES_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 43
    :goto_0
    const v0, 0x7f0b0227

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;

    .line 44
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/FitEndScaledImageView;->setImageResource(I)V

    .line 46
    return-object v2

    :cond_0
    move v1, v0

    goto :goto_0
.end method
