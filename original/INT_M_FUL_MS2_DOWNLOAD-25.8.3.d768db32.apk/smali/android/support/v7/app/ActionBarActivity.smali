.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/a;


# instance fields
.field mImpl:Landroid/support/v7/app/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/b;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->h()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->c()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 419
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 253
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/content/res/Configuration;)V

    .line 106
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->j()V

    .line 465
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Landroid/support/v7/app/b;->a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/b;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->c(I)Landroid/view/View;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 339
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/b;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 136
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->onSupportNavigateUp()Z

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->e()V

    .line 118
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/b;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/b;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 111
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->d()V

    .line 112
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 389
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 390
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 393
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    const/4 v0, 0x1

    .line 406
    :goto_1
    return v0

    .line 394
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(I)V

    .line 78
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/b;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->d(I)V

    .line 312
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->c(Z)V

    .line 296
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->b(Z)V

    .line 281
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Z)V

    .line 267
    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method superAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void
.end method

.method superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superSetContentView(I)V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 218
    return-void
.end method

.method superSetContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 171
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->f()V

    .line 174
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 452
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mImpl:Landroid/support/v7/app/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 436
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
