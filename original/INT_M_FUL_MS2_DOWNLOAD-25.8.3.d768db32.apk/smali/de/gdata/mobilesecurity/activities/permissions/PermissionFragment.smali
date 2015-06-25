.class public Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final PACKET_DESC:Ljava/lang/String; = "permissionDescription"

.field public static final PACKET_LIST:Ljava/lang/String; = "packetList"

.field public static final PACKET_TITLE:Ljava/lang/String; = "permissionTitle"


# instance fields
.field a:Z

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Ljava/lang/Boolean;

.field private e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

.field public mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->d:Ljava/lang/Boolean;

    .line 240
    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 150
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;-><init>()V

    .line 155
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v4, "packetList"

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    const-string v1, "permissionDescription"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "permissionTitle"

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 166
    const v1, 0x7f04000a

    const v3, 0x7f04000d

    invoke-virtual {v0, v1, v5, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 167
    const v1, 0x7f0b02a8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 169
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 170
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListShown(Z)V

    .line 61
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 62
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
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/f;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/permissions/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 67
    const v0, 0xff0001

    .line 68
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 75
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->mList:Landroid/widget/ListView;

    .line 76
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->c:Landroid/view/View;

    .line 77
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->b:Landroid/view/View;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->a:Z

    .line 79
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->a(I)V

    .line 121
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->setData(Ljava/util/List;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListShown(Z)V

    .line 138
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->d:Ljava/lang/Boolean;

    .line 139
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/permissions/PermissionsBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->e:Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment$PermissionListAdapter;->setData(Ljava/util/List;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 116
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListShown(ZZ)V

    .line 106
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 83
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->a:Z

    if-ne v0, p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->a:Z

    .line 87
    if-eqz p1, :cond_2

    .line 88
    if-eqz p2, :cond_1

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_2
    if-eqz p2, :cond_3

    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionFragment;->setListShown(ZZ)V

    .line 110
    return-void
.end method
