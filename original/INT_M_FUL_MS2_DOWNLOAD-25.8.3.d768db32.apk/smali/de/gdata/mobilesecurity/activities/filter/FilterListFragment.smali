.class public Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;
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
        "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
        ">;>;"
    }
.end annotation


# static fields
.field static a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Landroid/support/v7/view/ActionMode;


# instance fields
.field b:Landroid/view/Menu;

.field c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;

.field private p:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/16 v0, 0x69

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->g:I

    .line 57
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->h:I

    .line 58
    const/16 v0, 0x68

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->i:I

    .line 60
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->j:I

    .line 61
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->k:I

    .line 62
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->l:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->m:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->n:Ljava/util/ArrayList;

    .line 67
    sput-object v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 69
    sput-object v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b:Landroid/view/Menu;

    .line 719
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->p:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->i:I

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 211
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 212
    return-void
.end method


# virtual methods
.method public addNewEntry()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->saveAllIntoDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    const-string v1, ""

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "0000000"

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 226
    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 228
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/filter/NewFilterActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const-string v2, "filterGroup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z
    .locals 2

    .prologue
    .line 340
    .line 341
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSOutgoingSet()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSIncomingSet()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move v0, v1

    .line 86
    :goto_0
    sget-object v3, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d014f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    .line 96
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v3, Lde/gdata/mobilesecurity/activities/filter/n;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-direct {v3, v4, v5}, Lde/gdata/mobilesecurity/activities/filter/n;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 99
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListShown(Z)V

    .line 102
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isCompassOemVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isFirstCallfilterStart()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0d0201

    invoke-virtual {p0, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0271

    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0240

    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lde/gdata/mobilesecurity/activities/filter/f;

    invoke-direct {v6, p0}, Lde/gdata/mobilesecurity/activities/filter/f;-><init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;)V

    invoke-static {v0, v3, v4, v5, v6}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->setCancelable(Z)V

    .line 116
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "WARNING_DIALOG"

    invoke-virtual {v0, v3, v4}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setCallFilterStarted(Z)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 120
    return-void

    :cond_2
    move v0, v2

    .line 84
    goto/16 :goto_0

    .line 87
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 91
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0273

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setHasOptionsMenu(Z)V

    .line 126
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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/m;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 186
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v0

    sget-object v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 187
    sget v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->l:I

    const v1, 0x7f0d039e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 189
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 190
    sget v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->k:I

    const v1, 0x7f0d0153

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 194
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b:Landroid/view/Menu;

    .line 196
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 131
    const v0, 0xff0001

    .line 133
    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 134
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 136
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 139
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 140
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->mList:Landroid/widget/ListView;

    .line 141
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->f:Landroid/view/View;

    .line 142
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e:Landroid/view/View;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->d:Z

    .line 145
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 310
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->setData(Ljava/util/List;)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListShown(Z)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListShownNoAnimation(Z)V

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
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->setData(Ljava/util/List;)V

    .line 337
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option item selected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->k:I

    if-ne v0, v2, :cond_3

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 244
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->isNoBusinessFilter(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->notifyDataSetInvalidated()V

    .line 251
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/n;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/filter/n;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 254
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment$FilterGroupListAdapter;->notifyDataSetChanged()V

    move v0, v1

    .line 273
    :goto_1
    return v0

    .line 257
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->l:I

    if-ne v0, v2, :cond_4

    .line 259
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->addNewEntry()V

    move v0, v1

    .line 260
    goto :goto_1

    .line 262
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->j:I

    if-ne v0, v2, :cond_5

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 267
    goto :goto_1

    .line 269
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->g:I

    if-ne v0, v2, :cond_6

    move v0, v1

    .line 270
    goto :goto_1

    .line 273
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->saveAllIntoDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 297
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v2, v3

    .line 300
    :goto_0
    if-eqz v2, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 305
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->l:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 300
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 202
    sget v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 203
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e()V

    .line 205
    :cond_0
    return-void
.end method

.method public saveAllIntoDb()V
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 279
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateInDB(Landroid/content/Context;)I

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListShown(ZZ)V

    .line 173
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->d:Z

    .line 153
    if-eqz p1, :cond_2

    .line 154
    if-eqz p2, :cond_1

    .line 155
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_2
    if-eqz p2, :cond_3

    .line 162
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;->setListShown(ZZ)V

    .line 178
    return-void
.end method
