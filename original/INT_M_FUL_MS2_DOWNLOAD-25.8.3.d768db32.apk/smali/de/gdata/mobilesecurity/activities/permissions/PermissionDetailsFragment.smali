.class public Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"


# static fields
.field public static final APP_PKG_NAME:Ljava/lang/String; = "PACKAGE_NAME"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    .line 156
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/e;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/permissions/e;-><init>(Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_0

    const-string v0, "clickedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "clickedPosition"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    .line 54
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 82
    const v0, 0x7f030087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 88
    const v0, 0x7f0b0307

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "permissionTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    const v0, 0x7f0b0309

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "permissionDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packetList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 97
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 109
    iput p3, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    .line 111
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p3}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->showInstalledAppPermissions(Landroid/content/Context;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 60
    iget v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    if-ltz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    const/4 v1, 0x0

    .line 65
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    iget v3, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->a:Ljava/util/Vector;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/permissions/e;

    .line 75
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/permissions/e;->notifyDataSetChanged()V

    .line 78
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "clickedPosition"

    iget v1, p0, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 124
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v0, "package"

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void

    .line 129
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    .line 130
    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public showInstalledAppPermissions(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;-><init>()V

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string v2, "PACKAGE_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/permissions/AppPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/permissions/PermissionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 147
    const v2, 0x7f04000a

    const v3, 0x7f04000d

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    const v2, 0x7f0b02a8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 150
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 151
    return-void
.end method
