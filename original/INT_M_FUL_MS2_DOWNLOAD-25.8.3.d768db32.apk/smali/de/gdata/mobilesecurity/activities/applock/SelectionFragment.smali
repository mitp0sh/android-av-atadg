.class public Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;
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
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

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

.field private static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Landroid/support/v7/view/ActionMode;

.field private static q:Ljava/lang/String;

.field private static r:Z

.field private static s:Z


# instance fields
.field a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field b:Landroid/view/Menu;

.field c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

.field d:Z

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field public mList:Landroid/widget/ListView;

.field private t:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x69

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g:I

    .line 61
    const/16 v0, 0x67

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->h:I

    .line 62
    const/16 v0, 0x68

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->i:I

    .line 64
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->j:I

    .line 65
    const/16 v0, 0x65

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->k:I

    .line 66
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->l:I

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->n:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->o:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    .line 789
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ad;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/ad;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 76
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 78
    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b:Landroid/view/Menu;

    .line 80
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->t:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;

    .line 629
    return-void
.end method

.method static synthetic a(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method private static a(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->r:Z

    return v0
.end method

.method static synthetic b()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->h:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->s:Z

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 99
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    .line 100
    return-void
.end method

.method public static startApplockHelp(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    const-string v1, "helpTitle"

    const v2, 0x7f0d0131

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "helpBody"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body style=\'background-color:#ffffff;color:#404040;font-size:15\'><div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d012f

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /><hr />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0130

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /><hr />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d012e

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /><hr />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0132

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</div></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public static unselect()V
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 624
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 108
    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d014f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_2
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    .line 120
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListShown(Z)V

    .line 123
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/af;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/applock/af;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 130
    return-void

    :cond_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 114
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d014d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d014e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 799
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 800
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setHasOptionsMenu(Z)V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->t:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
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
            "Lde/gdata/mobilesecurity/activities/applock/LockedApp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/ae;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/ae;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 222
    :cond_0
    const/4 v0, 0x1

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 225
    const/4 v0, 0x2

    .line 227
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 228
    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->l:I

    const v2, 0x7f0d014c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020115

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 230
    invoke-static {v1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 233
    :cond_2
    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->j:I

    const v2, 0x7f0d0154

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 235
    invoke-static {v1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 238
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v2, "Private"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Teenager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Toddler"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    :cond_3
    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->k:I

    const v2, 0x7f0d0153

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 243
    invoke-static {v1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 246
    :cond_4
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 247
    sget v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g:I

    const v2, 0x7f0d012d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020075

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 248
    invoke-static {v1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 251
    :cond_5
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b:Landroid/view/Menu;

    .line 253
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 254
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 146
    const v0, 0xff0001

    .line 148
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 155
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 156
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->mList:Landroid/widget/ListView;

    .line 157
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f:Landroid/view/View;

    .line 158
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e:Landroid/view/View;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d:Z

    .line 161
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v2

    .line 163
    const v0, 0x7f0b01c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    if-eqz v2, :cond_0

    .line 165
    const v2, 0x7f0d0158

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :goto_0
    return-object v1

    .line 167
    :cond_0
    const v2, 0x7f0d0157

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 349
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->t:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 354
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

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 356
    const v0, 0x7f0b0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 358
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 359
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 360
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 362
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v1, v2

    .line 366
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 367
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 371
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 387
    :cond_2
    :goto_1
    return-void

    .line 374
    :cond_3
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 376
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v4, Lde/gdata/mobilesecurity/activities/applock/af;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-direct {v4, v5, v6}, Lde/gdata/mobilesecurity/activities/applock/af;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    .line 380
    :cond_4
    :goto_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 381
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 383
    :cond_6
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 385
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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

    .line 396
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListShown(Z)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListShownNoAnimation(Z)V

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
    .line 407
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/high16 v4, 0x10000000

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 280
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

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->k:I

    if-ne v1, v2, :cond_6

    move v2, v0

    .line 283
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 284
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    sget-boolean v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->r:Z

    if-eqz v1, :cond_1

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_LOCK:I

    :goto_2
    add-int/2addr v5, v1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_1
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_UNLOCK:I

    goto :goto_2

    .line 283
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 290
    :cond_3
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 292
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/af;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-direct {v1, v2, v4}, Lde/gdata/mobilesecurity/activities/applock/af;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->p:Landroid/support/v7/view/ActionMode;

    .line 296
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->c:Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment$AppListAdapter;->notifyDataSetChanged()V

    move v0, v3

    .line 323
    :cond_5
    :goto_3
    return v0

    .line 299
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->l:I

    if-ne v1, v2, :cond_7

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    const-string v1, "lockedApps"

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 302
    const-string v1, "blockedApps"

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 304
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 305
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 309
    goto :goto_3

    .line 311
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->j:I

    if-ne v1, v2, :cond_8

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 314
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 316
    goto :goto_3

    .line 318
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->g:I

    if-ne v1, v2, :cond_5

    .line 319
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->startApplockHelp(Landroid/app/Activity;)V

    move v0, v3

    .line 320
    goto :goto_3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 329
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 333
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 335
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v2, v3

    .line 336
    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->q:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->s:Z

    .line 340
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->r:Z

    .line 342
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 343
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->b:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->l:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 336
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 90
    sget v0, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->h()V

    .line 93
    :cond_0
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListShown(ZZ)V

    .line 197
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 173
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d:Z

    if-ne v0, p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->d:Z

    .line 177
    if-eqz p1, :cond_2

    .line 178
    if-eqz p2, :cond_1

    .line 179
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_2
    if-eqz p2, :cond_3

    .line 186
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/SelectionFragment;->setListShown(ZZ)V

    .line 202
    return-void
.end method
