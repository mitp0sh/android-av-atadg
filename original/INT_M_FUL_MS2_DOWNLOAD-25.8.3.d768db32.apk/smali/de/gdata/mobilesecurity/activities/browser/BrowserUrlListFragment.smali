.class public Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIST_TO_LOAD:Ljava/lang/String; = "LIST_TO_LOAD"

.field private static g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static j:Landroid/support/v7/view/ActionMode;


# instance fields
.field private a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/Menu;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->h:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 526
    return-void
.end method

.method static synthetic a()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 50
    sput-boolean p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->h:Z

    return p0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 130
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->h:Z

    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->notifyDataSetInvalidated()V

    .line 100
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/t;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-direct {v1, p0, v2, v3}, Lde/gdata/mobilesecurity/activities/browser/t;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 104
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setHasOptionsMenu(Z)V

    .line 85
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    const-string v1, "LIST_TO_LOAD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "LIST_TO_LOAD"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->i:I

    .line 89
    :cond_0
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
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/u;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->i:I

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/browser/u;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    const/16 v0, 0x66

    const v1, 0x7f0d014c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020115

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 162
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->f:Landroid/view/Menu;

    .line 164
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 135
    const v1, 0xff0001

    .line 137
    const v0, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 139
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 141
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 143
    const v0, 0x7f0b014c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->e:Landroid/widget/TextView;

    .line 144
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->i:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->e:Landroid/widget/TextView;

    const v3, 0x7f0d02ce

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :cond_0
    const v0, 0x7f0b014f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->d:Landroid/view/View;

    .line 148
    const v0, 0x7f0b014e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->c:Landroid/view/View;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->b:Z

    .line 151
    const v0, 0x7f0b0150

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 153
    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;

    .line 180
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 182
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    sget-object v1, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->notifyDataSetChanged()V

    .line 190
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v1, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sput-boolean v6, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->h:Z

    .line 194
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->notifyDataSetInvalidated()V

    .line 195
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    new-instance v3, Lde/gdata/mobilesecurity/activities/browser/t;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-direct {v3, p0, v4, v5}, Lde/gdata/mobilesecurity/activities/browser/t;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    sput-object v1, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->j:Landroid/support/v7/view/ActionMode;

    .line 199
    :cond_2
    sget-object v1, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/o;

    invoke-direct {v1, p0, p2}, Lde/gdata/mobilesecurity/activities/browser/o;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 255
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListShown(Z)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 265
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/16 v3, 0x66

    const/4 v0, 0x0

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 170
    const-string v1, ""

    const-string v2, ""

    iget v4, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->i:I

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a(ILjava/lang/String;Ljava/lang/String;IILde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 174
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 125
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->finishActionMode()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 110
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->i:I

    invoke-direct {v0, p0, v2, v1, v3}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    .line 112
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListShown(Z)V

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->f:Landroid/view/Menu;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 116
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 119
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->f:Landroid/view/Menu;

    const/16 v2, 0x66

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public removeSelectedItems(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 415
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;

    invoke-direct {v1, p1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 420
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    const-string v4, "history"

    const-string v5, "id= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 426
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 428
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserDatabase;->close()V

    .line 430
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 432
    :cond_1
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListShown(ZZ)V

    .line 231
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 207
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->b:Z

    if-ne v0, p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->b:Z

    .line 211
    if-eqz p1, :cond_2

    .line 212
    if-eqz p2, :cond_1

    .line 213
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_2
    if-eqz p2, :cond_3

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->d:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->setListShown(ZZ)V

    .line 236
    return-void
.end method
