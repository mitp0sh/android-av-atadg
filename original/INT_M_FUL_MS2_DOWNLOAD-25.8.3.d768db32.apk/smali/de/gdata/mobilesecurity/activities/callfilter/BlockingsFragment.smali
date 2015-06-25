.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;
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
        "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;"
        }
    .end annotation
.end field

.field static d:Z

.field private static f:I

.field private static g:I

.field private static h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Landroid/support/v7/view/ActionMode;

.field private static k:I

.field private static l:I

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

.field b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

.field c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x64

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->f:I

    .line 58
    const/16 v0, 0x66

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->g:I

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->i:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d:Z

    .line 74
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->l:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->m:Ljava/util/HashMap;

    .line 412
    new-instance v0, Lde/gdata/mobilesecurity/activities/callfilter/e;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/callfilter/e;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 424
    new-instance v0, Lde/gdata/mobilesecurity/activities/callfilter/f;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/callfilter/f;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->ID_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 64
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->e:I

    .line 439
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->l:I

    return v0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->k:I

    return v0
.end method

.method static synthetic d()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->g:I

    return v0
.end method


# virtual methods
.method public loadImages(I)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 124
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 126
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;-><init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setListShown(Z)V

    .line 138
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/callfilter/g;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/callfilter/g;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 142
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/callfilter/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/callfilter/d;-><init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 153
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setHasOptionsMenu(Z)V

    .line 82
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "DIRECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DIRECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->k:I

    .line 88
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->c:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 89
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_1
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->DIRECTION_IN:I

    goto :goto_1
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
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    sget v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->f:I

    const v1, 0x7f0d01ae

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 96
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 164
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

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v0, p3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 166
    const v0, 0x7f0b015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 168
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v1, p3}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    .line 170
    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 175
    sput-boolean v6, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d:Z

    .line 176
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarActivity;

    new-instance v3, Lde/gdata/mobilesecurity/activities/callfilter/g;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-direct {v3, v4, v5}, Lde/gdata/mobilesecurity/activities/callfilter/g;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    sput-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 186
    :goto_1
    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 184
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->setData(Ljava/util/List;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setListShown(Z)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->setListShownNoAnimation(Z)V

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
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->setData(Ljava/util/List;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 100
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

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->f:I

    if-ne v0, v1, :cond_3

    .line 103
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 104
    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/callfilter/g;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-direct {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/callfilter/g;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 110
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->notifyDataSetChanged()V

    .line 112
    const/4 v0, 0x1

    .line 115
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 160
    return-void
.end method
