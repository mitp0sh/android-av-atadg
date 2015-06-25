.class public Lde/gdata/mobilesecurity/privacy/CallLogFragment;
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


# instance fields
.field a:Z

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/graphics/drawable/Drawable;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/graphics/drawable/Drawable;

.field private g:Lde/gdata/mobilesecurity/privacy/d;

.field private h:Landroid/net/Uri;

.field private i:I

.field public mList:Landroid/widget/ListView;

.field protected m_numbers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/CallLogFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->h:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->h:Landroid/net/Uri;

    .line 169
    new-instance v0, Lde/gdata/mobilesecurity/privacy/d;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lde/gdata/mobilesecurity/privacy/d;-><init>(Lde/gdata/mobilesecurity/privacy/CallLogFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->g:Lde/gdata/mobilesecurity/privacy/d;

    .line 170
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->h:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->i:I

    .line 178
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->g:Lde/gdata/mobilesecurity/privacy/d;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListShown(Z)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
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
    .line 235
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->i:I

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getCallsUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "number in ( %s )"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->m_numbers:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->m_numbers:[Ljava/lang/String;

    const-string v6, "date ASC "

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 110
    const v0, 0xff0001

    .line 112
    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    new-instance v2, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 119
    const v2, 0x7f0b0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 120
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->mList:Landroid/widget/ListView;

    .line 121
    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->c:Landroid/view/View;

    .line 122
    const v0, 0x7f0b014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->b:Landroid/view/View;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->a:Z

    .line 125
    const v0, 0x7f0b032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0d047c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->e:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02010b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->d:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->f:Landroid/graphics/drawable/Drawable;

    .line 131
    return-object v1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 242
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->g:Lde/gdata/mobilesecurity/privacy/d;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/c;

    invoke-direct {v1, p0, p2}, Lde/gdata/mobilesecurity/privacy/c;-><init>(Lde/gdata/mobilesecurity/privacy/CallLogFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListShown(Z)V

    .line 252
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 256
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->g:Lde/gdata/mobilesecurity/privacy/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListShown(Z)V

    .line 191
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    .line 192
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/a;

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/privacy/a;-><init>(Lde/gdata/mobilesecurity/privacy/CallLogFragment;Landroid/support/v7/app/ActionBarActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListShown(ZZ)V

    .line 158
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 135
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->a:Z

    if-ne v0, p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->a:Z

    .line 139
    if-eqz p1, :cond_2

    .line 140
    if-eqz p2, :cond_1

    .line 141
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_2
    if-eqz p2, :cond_3

    .line 148
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->setListShown(ZZ)V

    .line 162
    return-void
.end method
