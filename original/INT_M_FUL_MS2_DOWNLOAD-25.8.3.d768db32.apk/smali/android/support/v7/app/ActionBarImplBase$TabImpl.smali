.class public Landroid/support/v7/app/ActionBarImplBase$TabImpl;
.super Landroid/support/v7/app/ActionBar$Tab;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarImplBase;

.field private b:Landroid/support/v7/app/ActionBar$TabListener;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarImplBase;)V
    .locals 1

    .prologue
    .line 627
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-direct {p0}, Landroid/support/v7/app/ActionBar$Tab;-><init>()V

    .line 634
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->b:Landroid/support/v7/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->h:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/ActionBarImplBase;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 728
    return-void
.end method

.method public setContentDescription(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->b(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 737
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->f:Ljava/lang/CharSequence;

    .line 738
    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    if-ltz v0, :cond_0

    .line 739
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->a(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 741
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplBase;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 665
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->h:Landroid/view/View;

    .line 666
    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    if-ltz v0, :cond_0

    .line 667
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->a(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 669
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->b(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 699
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->d:Landroid/graphics/drawable/Drawable;

    .line 700
    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    if-ltz v0, :cond_0

    .line 701
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->a(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 703
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 689
    iput p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    .line 690
    return-void
.end method

.method public setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->b:Landroid/support/v7/app/ActionBar$TabListener;

    .line 655
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->c:Ljava/lang/Object;

    .line 645
    return-object p0
.end method

.method public setText(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->b(Landroid/support/v7/app/ActionBarImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->e:Ljava/lang/CharSequence;

    .line 714
    iget v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    if-ltz v0, :cond_0

    .line 715
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->a:Landroid/support/v7/app/ActionBarImplBase;

    invoke-static {v0}, Landroid/support/v7/app/ActionBarImplBase;->a(Landroid/support/v7/app/ActionBarImplBase;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/ActionBarImplBase$TabImpl;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 717
    :cond_0
    return-object p0
.end method
