.class public Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;
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
        "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
        ">;>;"
    }
.end annotation


# static fields
.field static a:Z

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Landroid/support/v7/view/ActionMode;

.field private static p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/lang/String;

.field private static s:Z

.field private static t:Z


# instance fields
.field b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

.field c:I

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "num"

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    .line 65
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->h:I

    .line 66
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->i:I

    .line 67
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->j:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    .line 71
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ac;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/ac;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->m:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->n:Ljava/util/Vector;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->q:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 617
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static a(I)Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->s:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 61
    sput-boolean p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->s:Z

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 61
    sput p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    return p0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->i:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->n:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->t:Z

    return v0
.end method

.method static synthetic k()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 253
    const-string v1, "lockedApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    .line 254
    const-string v1, "blockedApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->q:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListShown(Z)V

    .line 259
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 266
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setHasOptionsMenu(Z)V

    .line 113
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->c:I

    .line 114
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 384
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 386
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListLoader;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->h:I

    const v1, 0x7f0d0153

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 301
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 303
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 118
    const v0, 0xff0001

    .line 120
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 126
    const v2, 0x7f0b01c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 131
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->mList:Landroid/widget/ListView;

    .line 132
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f:Landroid/view/View;

    .line 133
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e:Landroid/view/View;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->d:Z

    .line 136
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 210
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

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 212
    const v0, 0x7f0b0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 214
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 215
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 218
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v2, v3

    .line 222
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 223
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 227
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    .line 228
    sput-boolean v3, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->a:Z

    .line 229
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 246
    :cond_2
    :goto_1
    return-void

    .line 233
    :cond_3
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-direct {v2, v5, v6}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 239
    :goto_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 240
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 237
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_6
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 391
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 393
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListShown(Z)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListShownNoAnimation(Z)V

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
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 403
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option item selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->h:I

    if-ne v0, v1, :cond_5

    .line 277
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 278
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    sget v4, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    sget-boolean v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->s:Z

    if-eqz v1, :cond_1

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    :goto_2
    add-int/2addr v4, v1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v4, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v4, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_1
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    goto :goto_2

    .line 277
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 284
    :cond_3
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->l:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 285
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$LockActionMode;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 289
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_3
    return v0

    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 175
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->r:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v1

    sput-boolean v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->t:Z

    .line 179
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->s:Z

    .line 181
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->s:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0165

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->updateAdapter()V

    .line 187
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListShown(ZZ)V

    .line 164
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 140
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->d:Z

    .line 144
    if-eqz p1, :cond_2

    .line 145
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    if-eqz p2, :cond_3

    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->setListShown(ZZ)V

    .line 169
    return-void
.end method

.method public updateAdapter()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectProtectedFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing items ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 196
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectProtectedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 206
    :cond_2
    return-void
.end method
