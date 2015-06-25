.class public interface abstract Lcom/viewpagerindicator/PageIndicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field public static final EDIT_MODE_COUNT:I = 0x5

.field public static final EDIT_MODE_PAGE:I = 0x2

.field public static final EDIT_MODE_TITLE:Ljava/lang/String; = "Page %d"

.field public static final EMPTY_TITLE:Ljava/lang/CharSequence;

.field public static final INVALID_POINTER:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    sput-object v0, Lcom/viewpagerindicator/PageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract notifyDataSetChanged()V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract setViewPager(Landroid/support/v4/view/ViewPager;)V
.end method

.method public abstract setViewPager(Landroid/support/v4/view/ViewPager;I)V
.end method
