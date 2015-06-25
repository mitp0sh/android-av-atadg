.class public Lde/gdata/mobilesecurity/activities/applock/DenialFragment;
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

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Landroid/support/v7/view/ActionMode;

.field private static o:Ljava/lang/String;

.field private static p:Z

.field private static q:Z

.field private static r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;


# instance fields
.field a:Landroid/view/Menu;

.field b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

.field c:Z

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field public mList:Landroid/widget/ListView;

.field private s:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/16 v0, 0x13ed

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->f:I

    .line 67
    const/16 v0, 0x13f1

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->g:I

    .line 68
    const/16 v0, 0x13f2

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->h:I

    .line 69
    const/16 v0, 0x13ee

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->i:I

    .line 70
    const/16 v0, 0x13ef

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->j:I

    .line 71
    const/16 v0, 0x13f0

    sput v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->k:I

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->m:Ljava/util/ArrayList;

    .line 75
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 80
    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 91
    const-string v0, "identifier"

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->t:Ljava/lang/String;

    .line 92
    const-string v0, "time"

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->u:Ljava/lang/String;

    .line 93
    const-string v0, "app_label"

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->v:Ljava/lang/String;

    .line 944
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/b;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/b;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a:Landroid/view/Menu;

    .line 84
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->s:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;

    .line 791
    return-void
.end method

.method static synthetic a()Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private static a(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->p:Z

    return v0
.end method

.method static synthetic c()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->j:I

    return v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j()Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->i:I

    return v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->q:Z

    return v0
.end method

.method public static startAppblockHelp(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v1, "helpTitle"

    const v2, 0x7f0d0131

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "helpBody"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body style=\'background-color:#ffffff;color:#404040;font-size:14\'><div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0106

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br /><hr />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0107

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</div></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 102
    :goto_0
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d010e

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d010b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_3
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/applock/DenialFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListShown(Z)V

    .line 118
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 120
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v2, Lde/gdata/mobilesecurity/activities/applock/h;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-direct {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/applock/h;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 125
    return-void

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    const v2, 0x7f0d010c

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 109
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0d010d

    :goto_4
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d010a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    const v2, 0x7f0d0109

    goto :goto_4

    :cond_6
    const-string v0, ""

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setHasOptionsMenu(Z)V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->s:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
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
    .line 377
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/d;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 240
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 241
    sget v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->g:I

    const v1, 0x7f0d014c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 243
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 247
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "Private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Teenager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Toddler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    :cond_2
    sget v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->f:I

    const v1, 0x7f0d0153

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 252
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 255
    :cond_3
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardTeenagerActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    sget v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->k:I

    const v1, 0x7f0d012d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020075

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 261
    :cond_4
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a:Landroid/view/Menu;

    .line 263
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 264
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 142
    const v0, 0xff0001

    .line 144
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 145
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    sput-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 147
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 150
    invoke-static {v1, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 153
    const v3, 0x7f0b0150

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 154
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->mList:Landroid/widget/ListView;

    .line 155
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e:Landroid/view/View;

    .line 156
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d:Landroid/view/View;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->c:Z

    .line 159
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v2

    .line 160
    const v0, 0x7f0b01c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    if-eqz v2, :cond_0

    .line 162
    const v2, 0x7f0d0111

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :goto_0
    return-object v1

    .line 164
    :cond_0
    const v2, 0x7f0d0110

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 335
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->s:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 340
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

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 342
    const v0, 0x7f0b0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 344
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    .line 345
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 346
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 348
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v1, v2

    .line 352
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 357
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 373
    :cond_2
    :goto_1
    return-void

    .line 360
    :cond_3
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 362
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v4, Lde/gdata/mobilesecurity/activities/applock/h;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-direct {v4, v5, v6}, Lde/gdata/mobilesecurity/activities/applock/h;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 366
    :cond_4
    :goto_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 367
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    sget-object v4, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 369
    :cond_6
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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

    .line 382
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListShown(Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListShownNoAnimation(Z)V

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
    .line 393
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->setData(Ljava/util/List;)V

    .line 394
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 268
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

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->f:I

    if-ne v1, v2, :cond_7

    move v2, v0

    .line 271
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 272
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v1

    if-nez v1, :cond_1

    sget v5, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    sget-boolean v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->p:Z

    if-eqz v1, :cond_2

    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_DENY:I

    :goto_2
    add-int/2addr v5, v1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->getPermissions()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    .line 277
    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_2
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_GRANT:I

    goto :goto_2

    .line 271
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 279
    :cond_4
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 280
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetInvalidated()V

    .line 281
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/applock/h;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-direct {v1, v2, v4}, Lde/gdata/mobilesecurity/activities/applock/h;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->n:Landroid/support/v7/view/ActionMode;

    .line 285
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetChanged()V

    move v0, v3

    .line 304
    :cond_6
    :goto_3
    return v0

    .line 288
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->g:I

    if-ne v1, v2, :cond_8

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    const-string v1, "blockedApps"

    sget-object v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 292
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 293
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Selector;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 297
    goto :goto_3

    .line 299
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->k:I

    if-ne v1, v2, :cond_6

    .line 300
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->startAppblockHelp(Landroid/app/Activity;)V

    move v0, v3

    .line 301
    goto :goto_3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 310
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 314
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 316
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v2, v3

    .line 317
    :goto_0
    if-eqz v2, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockPermissions()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 319
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplockConfig()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->o:Ljava/lang/String;

    .line 320
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppDeniedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->p:Z

    .line 321
    sget-object v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->r:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isAppProtectedByDefault()Z

    move-result v0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->q:Z

    .line 323
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 324
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->a:Landroid/view/Menu;

    sget v2, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->g:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 317
    goto :goto_1
.end method

.method public reloadApps()V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 328
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->b:Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment$AppListAdapter;->notifyDataSetChanged()V

    .line 329
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListShown(ZZ)V

    .line 194
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 170
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->c:Z

    if-ne v0, p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->c:Z

    .line 174
    if-eqz p1, :cond_2

    .line 175
    if-eqz p2, :cond_1

    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    if-eqz p2, :cond_3

    .line 183
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/applock/DenialFragment;->setListShown(ZZ)V

    .line 199
    return-void
.end method
