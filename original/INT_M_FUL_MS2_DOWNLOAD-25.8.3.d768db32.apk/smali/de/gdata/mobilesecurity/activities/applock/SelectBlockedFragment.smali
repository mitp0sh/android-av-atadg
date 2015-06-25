.class public Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;
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

.field private static k:Ljava/util/ArrayList;
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

.field private static l:Ljava/util/HashMap;
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

.field private static m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Landroid/support/v7/view/ActionMode;

.field private static o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

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

.field private static q:Ljava/lang/String;

.field private static r:Z

.field private static s:I


# instance fields
.field b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

.field c:I

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public list:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "num"

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    .line 68
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h:I

    .line 69
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->i:I

    .line 70
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->j:I

    .line 72
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ab;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/ab;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->l:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->m:Ljava/util/Vector;

    .line 81
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 82
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->a:Z

    .line 97
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 579
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 64
    sput-object p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static a(I)Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;-><init>()V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v0
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 64
    sput p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->r:Z

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    return v0
.end method

.method static synthetic d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->j:I

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic j()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->m:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    const-string v1, "blockedApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    .line 260
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListShown(Z)V

    .line 262
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 264
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    if-le v0, v1, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-direct {v1, p0, v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 269
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    iget v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setHasOptionsMenu(Z)V

    .line 114
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iput v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->c:I

    .line 115
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

    .line 388
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 390
    :cond_0
    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListLoader;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h:I

    const v1, 0x7f0d0153

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 305
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 306
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 119
    const v0, 0xff0001

    .line 121
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 124
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 129
    const v2, 0x7f0b01c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 134
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->list:Landroid/widget/ListView;

    .line 135
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f:Landroid/view/View;

    .line 136
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e:Landroid/view/View;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d:Z

    .line 139
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 214
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

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 216
    const v0, 0x7f0b0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 218
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 219
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 222
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v2, v3

    .line 226
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 227
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 231
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    .line 232
    sput-boolean v3, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->a:Z

    .line 233
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 250
    :cond_2
    :goto_1
    return-void

    .line 237
    :cond_3
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-direct {v2, p0, v5, v6}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 243
    :goto_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 244
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 241
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v5, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_6
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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

    .line 395
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 397
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListShown(Z)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListShownNoAnimation(Z)V

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
    .line 406
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 407
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 277
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

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->h:I

    if-ne v0, v1, :cond_6

    .line 280
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 281
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v1

    if-nez v1, :cond_1

    sget v4, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    sget-boolean v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->r:Z

    if-eqz v1, :cond_2

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    :goto_2
    add-int/2addr v4, v1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 286
    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v4, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v4, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :cond_2
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    goto :goto_2

    .line 280
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 288
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->k:Ljava/util/ArrayList;

    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-direct {v1, p0, v2, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$LockActionMode;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 293
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 295
    const/4 v0, 0x1

    .line 298
    :goto_3
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 182
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->q:Ljava/lang/String;

    .line 183
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->o:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->r:Z

    .line 185
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->r:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->updateAdapter()V

    .line 191
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListShown(ZZ)V

    .line 171
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->d:Z

    .line 151
    if-eqz p1, :cond_2

    .line 152
    if-eqz p2, :cond_1

    .line 153
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_2
    if-eqz p2, :cond_3

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->setListShown(ZZ)V

    .line 176
    return-void
.end method

.method public updateAdapter()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectBlockedFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing items ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 200
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

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

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment;->b:Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectBlockedFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 210
    :cond_2
    return-void
.end method
