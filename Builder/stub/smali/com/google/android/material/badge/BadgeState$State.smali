.class public final Lcom/google/android/material/badge/BadgeState$State;
.super Ljava/lang/Object;
.source "BadgeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeState$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_SET:I = -0x2


# instance fields
.field private additionalHorizontalOffset:Ljava/lang/Integer;

.field private additionalVerticalOffset:Ljava/lang/Integer;

.field private alpha:I

.field private autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

.field private backgroundColor:Ljava/lang/Integer;

.field private badgeFixedEdge:Ljava/lang/Integer;

.field private badgeGravity:Ljava/lang/Integer;

.field private badgeHorizontalPadding:Ljava/lang/Integer;

.field private badgeResId:I

.field private badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

.field private badgeShapeAppearanceResId:Ljava/lang/Integer;

.field private badgeTextAppearanceResId:Ljava/lang/Integer;

.field private badgeTextColor:Ljava/lang/Integer;

.field private badgeVerticalPadding:Ljava/lang/Integer;

.field private badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

.field private badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

.field private contentDescriptionExceedsMaxBadgeNumberRes:I

.field private contentDescriptionForText:Ljava/lang/CharSequence;

.field private contentDescriptionNumberless:Ljava/lang/CharSequence;

.field private contentDescriptionQuantityStrings:I

.field private horizontalOffsetWithText:Ljava/lang/Integer;

.field private horizontalOffsetWithoutText:Ljava/lang/Integer;

.field private isVisible:Ljava/lang/Boolean;

.field private largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

.field private maxCharacterCount:I

.field private maxNumber:I

.field private number:I

.field private numberLocale:Ljava/util/Locale;

.field private text:Ljava/lang/String;

.field private verticalOffsetWithText:Ljava/lang/Integer;

.field private verticalOffsetWithoutText:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 735
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State$1;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State$1;-><init>()V

    sput-object v0, Lcom/google/android/material/badge/BadgeState$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 655
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v0, -0x2

    .line 658
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 659
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 660
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    const/4 v0, 0x1

    .line 669
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 655
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v0, -0x2

    .line 658
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 659
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 660
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    const/4 v0, 0x1

    .line 669
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeFixedEdge:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    return p0
.end method

.method static synthetic access$1002(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    return p0
.end method

.method static synthetic access$2000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    return p0
.end method

.method static synthetic access$602(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    return p0
.end method

.method static synthetic access$702(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 0

    .line 637
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    return p0
.end method

.method static synthetic access$902(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0

    .line 637
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 757
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 759
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 760
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 761
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 762
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 763
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 764
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 765
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 770
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    iget p2, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 776
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 777
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 778
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 779
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 780
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 781
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 782
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 783
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 784
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 785
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 786
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 787
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 788
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeFixedEdge:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
