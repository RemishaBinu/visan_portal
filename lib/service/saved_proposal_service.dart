import 'package:flutter/material.dart';
import 'package:visan_portal/model/saved_proposal.dart';

class SavedProposalService {
  static SavedProposalService instance = SavedProposalService();
  static getInstance() {
    return instance;
  }

  List<SavedProposal> getSavedData() {
    List<SavedProposal> savedData = [
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Close in 4 days',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Closed',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Close in 4 days',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Closed',
          date: '1 day ago',
          paymentStatus: 'Payment verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Closed',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Closed',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
          icon: Icons.delete_outline_outlined),
    ];
    return savedData;
  }

  List<SavedProposal> getProposalData(){
    List<SavedProposal> proposalData = [
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Submitted on 23 jun',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),
       SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'In touch',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Rejected',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),
       SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'Submitted on 23 jun',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'In touch',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),
      SavedProposal(
          title: 'Application Developer',
          company: 'Tech mahi',
          workMode: 'Fixed price | On Site',
          salary: '25k - 30k / month',
          status: 'In touch',
          date: '1 day ago',
          paymentStatus: 'Payment not verified',
          place: 'United States',
          locationIcon: Icons.location_on_outlined,
      ),

    ];
    return proposalData;
  }
}
