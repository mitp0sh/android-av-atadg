.class public Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;
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
        "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Landroid/support/v7/view/ActionMode;

.field private static p:Z


# instance fields
.field b:Landroid/view/Menu;

.field c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/16 v0, 0x69

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->g:I

    .line 48
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->h:I

    .line 49
    const/16 v0, 0x68

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->i:I

    .line 51
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->j:I

    .line 52
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->k:I

    .line 53
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->l:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->m:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->n:Ljava/util/ArrayList;

    .line 58
    sput-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->p:Z

    .line 61
    sput-object v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b:Landroid/view/Menu;

    .line 496
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->o:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->h:I

    return v0
.end method

.method public static startAddNewLockedLocation(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 184
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    const-string v1, ""

    const-string v2, "0000000"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;)V

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    const-string v2, "lockedLocation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move v0, v1

    .line 77
    :goto_0
    sget-object v3, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0150

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d014f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListShown(Z)V

    .line 90
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->p:Z

    .line 92
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->notifyDataSetInvalidated()V

    .line 93
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-direct {v1, v3, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 98
    return-void

    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 82
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d032b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d032c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setHasOptionsMenu(Z)V

    .line 105
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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/aq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 169
    :cond_0
    sget v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->l:I

    const v1, 0x7f0d014c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 173
    sget v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->k:I

    const v1, 0x7f0d0153

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 177
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b:Landroid/view/Menu;

    .line 179
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 110
    const v0, 0xff0001

    .line 112
    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 118
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 119
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->mList:Landroid/widget/ListView;

    .line 120
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->f:Landroid/view/View;

    .line 121
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->e:Landroid/view/View;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->d:Z

    .line 124
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    .line 126
    const v0, 0x7f0b01c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const v2, 0x7f0d0329

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 268
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 282
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->setData(Ljava/util/List;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListShown(Z)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListShownNoAnimation(Z)V

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
            "Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->setData(Ljava/util/List;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 200
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

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->k:I

    if-ne v0, v2, :cond_1

    .line 203
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->m:Ljava/util/ArrayList;

    sget-object v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    sput-boolean v1, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->p:Z

    .line 206
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->notifyDataSetInvalidated()V

    .line 207
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/usagecontrol/ar;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->o:Landroid/support/v7/view/ActionMode;

    .line 211
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->c:Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment$BlockedLocationListAdapter;->notifyDataSetChanged()V

    move v0, v1

    .line 231
    :goto_0
    return v0

    .line 214
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->l:I

    if-ne v0, v2, :cond_2

    .line 216
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->startAddNewLockedLocation(Landroid/app/Activity;)V

    move v0, v1

    .line 217
    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->j:I

    if-ne v0, v2, :cond_3

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->g:I

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->saveAllIntoDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v2, v3

    .line 259
    :goto_0
    if-eqz v2, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 263
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->l:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 259
    goto :goto_1
.end method

.method public saveAllIntoDb()V
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLockedLocationsChanged(Z)Z

    .line 238
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;

    .line 239
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/usagecontrol/LockedLocation;->saveIntoDB(Landroid/content/Context;)V

    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListShown(ZZ)V

    .line 157
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 133
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->d:Z

    .line 137
    if-eqz p1, :cond_2

    .line 138
    if-eqz p2, :cond_1

    .line 139
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_2
    if-eqz p2, :cond_3

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/UsageRestrictionListFragment;->setListShown(ZZ)V

    .line 162
    return-void
.end method
