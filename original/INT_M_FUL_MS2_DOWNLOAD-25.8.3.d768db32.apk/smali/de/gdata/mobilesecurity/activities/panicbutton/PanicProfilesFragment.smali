.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;
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
        "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
        ">;>;"
    }
.end annotation


# static fields
.field static a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Landroid/support/v7/view/ActionMode;


# instance fields
.field b:Landroid/view/Menu;

.field c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/16 v0, 0x69

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->g:I

    .line 42
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->h:I

    .line 43
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->i:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->j:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->k:Ljava/util/ArrayList;

    .line 48
    sput-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->l:Landroid/support/v7/view/ActionMode;

    .line 50
    sput-object v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->b:Landroid/view/Menu;

    .line 347
    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->k:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addNewEntry()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d03a9

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListShown(Z)V

    .line 73
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setHasOptionsMenu(Z)V

    .line 80
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
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/s;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 138
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->i:I

    const v1, 0x7f0d014c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 141
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->b:Landroid/view/Menu;

    .line 143
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 144
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 84
    const v0, 0xff0001

    .line 86
    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 89
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 93
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 94
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->mList:Landroid/widget/ListView;

    .line 95
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->f:Landroid/view/View;

    .line 96
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->e:Landroid/view/View;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->d:Z

    .line 99
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 206
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->setData(Ljava/util/List;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListShown(Z)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListShownNoAnimation(Z)V

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
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->c:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->setData(Ljava/util/List;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option item selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->i:I

    if-ne v1, v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->addNewEntry()V

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->h:I

    if-ne v1, v2, :cond_2

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->g:I

    if-eq v1, v2, :cond_0

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->saveAllIntoDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v2, v3

    .line 198
    :goto_0
    if-eqz v2, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 201
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->i:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 198
    goto :goto_1
.end method

.method public saveAllIntoDb()V
    .locals 4

    .prologue
    .line 175
    sget-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 176
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->updatePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListShown(ZZ)V

    .line 127
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->d:Z

    .line 107
    if-eqz p1, :cond_2

    .line 108
    if-eqz p2, :cond_1

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_2
    if-eqz p2, :cond_3

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->setListShown(ZZ)V

    .line 132
    return-void
.end method
