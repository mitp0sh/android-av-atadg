.class Lde/gdata/mobilesecurity/intents/as;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 564
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 565
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/as;->b:Landroid/view/LayoutInflater;

    .line 566
    return-void
.end method

.method private a(Lde/gdata/mobilesecurity/scan/AppInfection;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/AppInfection;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 686
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/scan/AppInfection;Landroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    .line 653
    const v0, 0x7f0b0152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 654
    const v1, 0x7f0b0153

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 655
    const v2, 0x7f0b0154

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 659
    :try_start_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 660
    invoke-direct {p0, p1, v3}, Lde/gdata/mobilesecurity/intents/as;->a(Lde/gdata/mobilesecurity/scan/AppInfection;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 661
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 663
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 665
    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 666
    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/AppInfection;->getDisplayMalwareName()Lde/gdata/mobilesecurity/sigfile/MalwareName;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :goto_0
    return-object p2

    .line 672
    :catch_0
    move-exception v0

    .line 673
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 674
    const v0, 0x7f0d03e2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 675
    :catch_1
    move-exception v0

    .line 676
    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/Throwable;)V

    .line 677
    const v0, 0x7f0d000d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(Lde/gdata/mobilesecurity/scan/FileInfection;Landroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 610
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 615
    if-eqz v1, :cond_2

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 619
    :goto_0
    const v0, 0x7f0b0152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 620
    const v2, 0x7f0200dd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 622
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 623
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 625
    const v0, 0x7f0b0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 626
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    const v0, 0x7f0b0154

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 628
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/FileInfection;->getDisplayMalwareName()Lde/gdata/mobilesecurity/sigfile/MalwareName;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/sigfile/MalwareName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    const v0, 0x7f0b023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 631
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/FileInfection;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/FileInfection;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/scan/FileInfection;

    .line 638
    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/FileInfection;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 640
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :goto_2
    return-object p2

    .line 646
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 580
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->c(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Lde/gdata/mobilesecurity/scan/MalwareInfectionList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/MalwareInfectionList;->get(I)Lde/gdata/mobilesecurity/scan/MalwareInfection;

    move-result-object v0

    .line 587
    if-nez p2, :cond_0

    .line 588
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/as;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 590
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->e(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/as;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->e(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {p2, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 594
    :cond_1
    if-eqz v0, :cond_4

    .line 595
    instance-of v1, v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    if-eqz v1, :cond_3

    check-cast v0, Lde/gdata/mobilesecurity/scan/FileInfection;

    invoke-direct {p0, v0, p2}, Lde/gdata/mobilesecurity/intents/as;->a(Lde/gdata/mobilesecurity/scan/FileInfection;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 606
    :cond_2
    :goto_0
    return-object p2

    .line 596
    :cond_3
    instance-of v1, v0, Lde/gdata/mobilesecurity/scan/AppInfection;

    if-eqz v1, :cond_4

    check-cast v0, Lde/gdata/mobilesecurity/scan/AppInfection;

    invoke-direct {p0, v0, p2}, Lde/gdata/mobilesecurity/intents/as;->a(Lde/gdata/mobilesecurity/scan/AppInfection;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 598
    :cond_4
    if-nez p2, :cond_2

    .line 599
    if-nez v0, :cond_5

    .line 600
    const-string v0, "Failed to create View entry infection is empty"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create View entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
